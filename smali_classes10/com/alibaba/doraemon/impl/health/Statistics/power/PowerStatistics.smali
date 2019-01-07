.class public Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
.super Ljava/lang/Object;
.source "PowerStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;,
        Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    }
.end annotation


# static fields
.field private static final JIFFIES_UNIT_DEFAULT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PowerStatistics"

.field private static sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

.field private mIsForeground:Z

.field private mIsStart:Z

.field private mJiffiesUnit:I

.field private mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

.field private mStatisticsUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

.field private mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

.field private mThreadTimeInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

.field private mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

.field private mWakeLockTimeInfo:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

.field private registeredSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsStart:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeInfo:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mWakeLockTimeInfo:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    .line 80
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    .line 83
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsForeground:Z

    .line 86
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$1;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    .line 180
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    .line 181
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->init(Landroid/content/Context;)V

    .line 183
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$3;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cpu_time"

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$3;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mStatisticsUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    .line 201
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;-><init>(Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    return v0
.end method

.method static synthetic access$202(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mWakeLockTimeInfo:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mWakeLockTimeInfo:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->recordSensorStartTime([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->recordSensorEndTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method private doStatistics(Z)V
    .locals 8
    .param p1, "isFg"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mStatisticsUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->doStatOnce()V

    .line 430
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mStatisticsUnit:Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/health/utils/StatisticsUnit;->getLatestIncValue()J

    move-result-wide v0

    .line 432
    .local v0, "incValue":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 433
    iget v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    if-lez v3, :cond_3

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    .line 434
    .local v2, "jiffies":I
    :goto_0
    int-to-long v6, v2

    div-long v6, v0, v6

    long-to-double v4, v6

    .line 435
    .local v4, "realValue":D
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getNetInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/HealthStatistics;->reportPowerValue(ZLjava/lang/String;D)V

    .line 440
    .end local v2    # "jiffies":I
    .end local v4    # "realValue":D
    :cond_0
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-eq v3, v6, :cond_2

    .line 441
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->isVipUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    if-nez v3, :cond_1

    .line 443
    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    .line 444
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->init(Landroid/content/Context;)V

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mVipAlarm:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerVIPAlarm;->checkWarn(ILjava/lang/Long;)V

    .line 450
    :cond_2
    return-void

    .line 433
    :cond_3
    const/16 v2, 0xc8

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .line 114
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private printRegisterError([Ljava/lang/Object;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 422
    .local v0, "p":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "PowerStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerListener param not as expected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method private recordSensorEndTime(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 21
    .param p1, "elementClass"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 360
    const/16 v16, 0x0

    .line 361
    .local v16, "stInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;>;"
    const/4 v11, 0x0

    .line 363
    .local v11, "o":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_0
    aget-object v11, p2, v4

    .line 364
    instance-of v4, v11, Landroid/hardware/SensorEventListener;

    if-eqz v4, :cond_1

    .line 366
    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Set;

    move-object/from16 v16, v0

    .line 369
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    .line 370
    .local v15, "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    array-length v0, v15

    move/from16 v20, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v14, v15, v17

    .line 371
    .local v14, "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v4, v14, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v13

    .line 373
    .local v13, "sensorName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v14, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->start:J

    sub-long v18, v4, v6

    .line 374
    .local v18, "useTime":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v13, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/HealthStatistics;->reportSensorTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 376
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 377
    .local v10, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v10, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    const-string/jumbo v5, "detail"

    const-string/jumbo v6, "Sensor"

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v0, v18

    long-to-double v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 370
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_0

    .line 382
    .end local v10    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v13    # "sensorName":Ljava/lang/String;
    .end local v14    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v15    # "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v18    # "useTime":J
    :cond_0
    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 384
    const/4 v4, 0x1

    aget-object v12, p2, v4

    check-cast v12, Landroid/hardware/Sensor;

    .line 385
    .local v12, "sensor":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Set;

    move-object/from16 v16, v0

    .line 387
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    .line 388
    .restart local v15    # "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    array-length v5, v15

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v14, v15, v4

    .line 389
    .restart local v14    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    iget-object v6, v14, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    if-ne v6, v12, :cond_3

    .line 390
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 391
    iget-object v4, v14, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v13

    .line 392
    .restart local v13    # "sensorName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v14, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->start:J

    sub-long v18, v4, v6

    .line 393
    .restart local v18    # "useTime":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v13, v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/HealthStatistics;->reportSensorTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 395
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 396
    .restart local v10    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v10, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mCountLogHandler:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    const-string/jumbo v5, "detail"

    const-string/jumbo v6, "Sensor"

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v0, v18

    long-to-double v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v10    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v12    # "sensor":Landroid/hardware/Sensor;
    .end local v13    # "sensorName":Ljava/lang/String;
    .end local v14    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v15    # "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v18    # "useTime":J
    :cond_1
    :goto_2
    if-eqz v11, :cond_2

    if-eqz v16, :cond_2

    .line 412
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v11    # "o":Ljava/lang/Object;
    :cond_2
    :goto_3
    return-void

    .line 388
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v12    # "sensor":Landroid/hardware/Sensor;
    .restart local v14    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .restart local v15    # "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 404
    .end local v12    # "sensor":Landroid/hardware/Sensor;
    .end local v14    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v15    # "stInfoArray":[Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->printRegisterError([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 409
    .end local v11    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->printRegisterError([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    if-eqz v11, :cond_2

    if-eqz v16, :cond_2

    .line 412
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 411
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_5

    if-eqz v16, :cond_5

    .line 412
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw v4
.end method

.method private recordSensorStartTime([Ljava/lang/Object;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    const/4 v4, 0x0

    :try_start_0
    aget-object v0, p1, v4

    .line 340
    .local v0, "o":Ljava/lang/Object;
    instance-of v4, v0, Landroid/hardware/SensorEventListener;

    if-eqz v4, :cond_1

    .line 341
    const/4 v4, 0x1

    aget-object v1, p1, v4

    check-cast v1, Landroid/hardware/Sensor;

    .line 342
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 343
    .local v3, "usedSensors":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;>;"
    if-nez v3, :cond_0

    .line 344
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "usedSensors":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 345
    .restart local v3    # "usedSensors":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registeredSensors:Ljava/util/Map;

    check-cast v0, Landroid/hardware/SensorEventListener;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;-><init>()V

    .line 348
    .local v2, "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    iput-object v1, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->start:J

    .line 350
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "stInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .end local v3    # "usedSensors":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;>;"
    :goto_0
    return-void

    .line 352
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->printRegisterError([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->printRegisterError([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .line 266
    :cond_0
    const-string/jumbo v2, "MONITOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/monitor/Monitor;

    .line 267
    .local v0, "monitor":Lcom/alibaba/doraemon/health/monitor/Monitor;
    const/16 v2, 0xff

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/health/monitor/Monitor;->addSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 269
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

    if-nez v2, :cond_1

    .line 270
    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

    .line 322
    :cond_1
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 323
    .local v1, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V

    .line 324
    return-void
.end method

.method private unregisterListeners()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    if-eqz v1, :cond_0

    .line 328
    const-string/jumbo v1, "MONITOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/monitor/Monitor;

    .line 329
    .local v0, "monitor":Lcom/alibaba/doraemon/health/monitor/Monitor;
    const/16 v1, 0xff

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mResListener:Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/health/monitor/Monitor;->removeSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 332
    .end local v0    # "monitor":Lcom/alibaba/doraemon/health/monitor/Monitor;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadListener:Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;->cancel()V

    .line 335
    :cond_1
    return-void
.end method


# virtual methods
.method public bgSampleStatistics()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->doStatistics(Z)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->bgSampleStatistics()V

    .line 163
    return-void
.end method

.method public doStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    const/16 v1, 0xc8

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mJiffiesUnit:I

    if-ne v1, v2, :cond_0

    .line 125
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 126
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "power_statistic"

    new-instance v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 137
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registerListeners()V

    .line 139
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doStart()V

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsStart:Z

    .line 142
    return-void
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->unregisterListeners()V

    .line 148
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->doStop()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsStart:Z

    .line 150
    return-void
.end method

.method public enterBGStatistics()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsForeground:Z

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->doStatistics(Z)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->enterBGStatistics()V

    .line 157
    return-void
.end method

.method public enterFGStatistics()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsForeground:Z

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->doStatistics(Z)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->enterFGStatistics()V

    .line 170
    return-void
.end method

.method public fgSampleStatistics()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->doStatistics(Z)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mThreadTimeStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/ThreadTimeStatistics;->fgSampleStatistics()V

    .line 176
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->mIsStart:Z

    return v0
.end method
