.class public Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;
.super Ljava/lang/Object;
.source "ThreadTimeStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsBase;


# static fields
.field private static final DIMENSION_KEY_PROCESS_NAME:Ljava/lang/String; = "p_name"

.field private static final DIMENSION_KEY_THREAD_NAME:Ljava/lang/String; = "t_name"

.field private static final DIMENSION_KEY_WARN_CODE:Ljava/lang/String; = "warn_code"

.field private static final MEASURE_KEY_S_TIME:Ljava/lang/String; = "s_time"

.field private static final MEASURE_KEY_U_TIME:Ljava/lang/String; = "u_time"

.field private static final PROCESS_CHANNEL:Ljava/lang/String; = ":channel"

.field private static final PROCESS_MAIN:Ljava/lang/String; = "main"

.field private static final PROCESS_TOOLS:Ljava/lang/String; = ":tools"

.field private static final STATISTIC_FREQ_TWO_MINUTES:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "ThreadTimeStatistics"

.field private static final U_TIME_15_MINUTES:J = 0x15f90L

.field private static final U_TIME_5_MINUTES:J = 0x7530L

.field private static final U_TIME_HALF_HOUR:J = 0x2bf20L

.field private static final U_TIME_ONE_HOUR:J = 0x57e40L


# instance fields
.field private mAlarmThreadTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

.field private mIsStart:Z

.field private mPreStatisticTime:J

.field private mStatistic:Lcom/alibaba/doraemon/statistics/Statistics;

.field private mThreadTimeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadTimeInfoForChannel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadTimeInfoForTools:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;Landroid/content/Context;)V
    .locals 1
    .param p1, "countLogHandler"    # Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mIsStart:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfo:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForChannel:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForTools:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mAlarmThreadTimeMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    .line 116
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    .line 117
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->initWriteThreadList()V

    .line 119
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->initStatistic()V

    .line 120
    return-void
.end method

.method private checkThreadUTimeAlarm(ILjava/lang/String;Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "threadTimeInfo"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    if-eqz p3, :cond_0

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-object v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    iget-object v7, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v3, "sbThreadKey":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "threadKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 258
    .local v5, "warnCode":I
    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x15f90

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 260
    const/16 v5, 0x32

    .line 272
    :cond_2
    :goto_1
    if-lez v5, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->shouldAlarm(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mAlarmThreadTimeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "pid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v6, "pname"

    invoke-virtual {v1, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v6, "tname"

    iget-object v7, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v6, "tid"

    iget v7, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v6, "utime"

    iget-wide v8, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v6, "stime"

    iget-wide v8, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {v5, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->notifyHealthWarn(ILjava/util/Map;)V

    .line 286
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 287
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v6, "p_name"

    invoke-virtual {v0, v6, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 288
    const-string/jumbo v6, "t_name"

    iget-object v7, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 289
    const-string/jumbo v6, "warn_code"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 290
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 291
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "u_time"

    iget-wide v8, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 292
    const-string/jumbo v6, "s_time"

    iget-wide v8, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 293
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mStatistic:Lcom/alibaba/doraemon/statistics/Statistics;

    if-eqz v6, :cond_0

    .line 294
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mStatistic:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v7, "Thread"

    const-string/jumbo v8, "UTime"

    invoke-interface {v6, v7, v8, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_3
    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x15f90

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x2bf20

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 263
    const/16 v5, 0x33

    goto/16 :goto_1

    .line 264
    :cond_4
    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x2bf20

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x57e40

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 266
    const/16 v5, 0x34

    goto/16 :goto_1

    .line 267
    :cond_5
    iget-wide v6, p3, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    const-wide/32 v8, 0x57e40

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 269
    const/16 v5, 0x35

    goto/16 :goto_1
.end method

.method private doSatistics()V
    .locals 18

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 161
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mPreStatisticTime:J

    sub-long v14, v6, v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mPreStatisticTime:J

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfo:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string/jumbo v15, "main"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doStatisticByProcess(Landroid/util/SparseArray;ILjava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_0

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 175
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":channel"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "channelProcess":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":tools"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "toolsProcess":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 178
    .local v2, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 179
    .local v10, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .line 180
    .local v4, "channelDone":Z
    const/4 v11, 0x0

    .line 181
    .local v11, "toolsDone":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 182
    .local v3, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_2

    iget-object v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 183
    if-eqz v4, :cond_3

    if-nez v11, :cond_0

    .line 186
    :cond_3
    iget-object v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 188
    const/4 v4, 0x1

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForChannel:Landroid/util/SparseArray;

    iget v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const-string/jumbo v16, ":channel"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doStatisticByProcess(Landroid/util/SparseArray;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "channelDone":Z
    .end local v5    # "channelProcess":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v11    # "toolsDone":Z
    .end local v12    # "toolsProcess":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "ThreadTimeStatistics"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-static {v14, v13}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "activityManager":Landroid/app/ActivityManager;
    .restart local v3    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "channelDone":Z
    .restart local v5    # "channelProcess":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v11    # "toolsDone":Z
    .restart local v12    # "toolsProcess":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 192
    const/4 v11, 0x1

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForTools:Landroid/util/SparseArray;

    iget v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const-string/jumbo v16, ":tools"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doStatisticByProcess(Landroid/util/SparseArray;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 198
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "channelDone":Z
    .end local v5    # "channelProcess":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v11    # "toolsDone":Z
    .end local v12    # "toolsProcess":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v13, "exp is null"

    goto :goto_2
.end method

.method private doStatisticByProcess(Landroid/util/SparseArray;ILjava/lang/String;)V
    .locals 18
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "threadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->getThreadTimeByPid(I)Landroid/util/SparseArray;

    move-result-object v10

    .line 207
    .local v10, "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 208
    .local v9, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 209
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 210
    .local v8, "key":I
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    .line 212
    .local v11, "newTimeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    .line 214
    .local v12, "oldTimeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    if-eqz v12, :cond_1

    .line 215
    iget-wide v14, v11, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    iget-wide v0, v11, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-wide v0, v12, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    iget-wide v0, v12, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 219
    .local v6, "increment":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_0

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->checkThreadUTimeAlarm(ILjava/lang/String;Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;)V

    .line 208
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    .end local v6    # "increment":J
    :cond_1
    iget-wide v14, v11, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J

    iget-wide v0, v11, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6    # "increment":J
    goto :goto_1

    .line 231
    .end local v6    # "increment":J
    .end local v8    # "key":I
    .end local v11    # "newTimeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .end local v12    # "oldTimeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    :cond_2
    const-string/jumbo v13, "main"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 232
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfo:Landroid/util/SparseArray;

    .line 242
    .end local v5    # "i":I
    .end local v9    # "len":I
    .end local v10    # "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    :cond_3
    :goto_2
    return-void

    .line 233
    .restart local v5    # "i":I
    .restart local v9    # "len":I
    .restart local v10    # "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    :cond_4
    const-string/jumbo v13, ":channel"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 234
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForChannel:Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 239
    .end local v5    # "i":I
    .end local v9    # "len":I
    .end local v10    # "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    :catch_0
    move-exception v4

    .line 240
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v14, "ThreadTimeStatistics"

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-static {v14, v13}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 235
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "i":I
    .restart local v9    # "len":I
    .restart local v10    # "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    :cond_5
    :try_start_1
    const-string/jumbo v13, ":tools"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 236
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mThreadTimeInfoForTools:Landroid/util/SparseArray;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 240
    .end local v5    # "i":I
    .end local v9    # "len":I
    .end local v10    # "newThreadTimeInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string/jumbo v13, "exp is null"

    goto :goto_3
.end method

.method private initStatistic()V
    .locals 6

    .prologue
    .line 123
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mStatistic:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 125
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 126
    .local v3, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "p_name"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 127
    const-string/jumbo v0, "t_name"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 128
    const-string/jumbo v0, "warn_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 131
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 132
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "s_time"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 133
    const-string/jumbo v0, "u_time"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 135
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mStatistic:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "Thread"

    const-string/jumbo v2, "UTime"

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 136
    return-void
.end method

.method private initWriteThreadList()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(HeapTaskDaemon)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(RenderThread)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(OnLineMonitor)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(Doraemon-Thread)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(MainThreadCheck)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(ioWorker)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(conn-worker)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(read-worker)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(tcp-nio-work)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(a.android.rimet)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mWhiteThreadList:Ljava/util/HashSet;

    const-string/jumbo v1, "(DeviceMotionAnd)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private shouldAlarm(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "threadKey"    # Ljava/lang/String;
    .param p2, "warnCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mAlarmThreadTimeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mAlarmThreadTimeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, "warnCodeValue":I
    if-ne v0, p2, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 313
    .end local v0    # "warnCodeValue":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bgSampleStatistics()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doSatistics()V

    .line 102
    return-void
.end method

.method public doStart()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mIsStart:Z

    .line 87
    return-void
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mIsStart:Z

    .line 92
    return-void
.end method

.method public enterBGStatistics()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doSatistics()V

    .line 97
    return-void
.end method

.method public enterFGStatistics()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doSatistics()V

    .line 107
    return-void
.end method

.method public fgSampleStatistics()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doSatistics()V

    .line 112
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->mIsStart:Z

    return v0
.end method
