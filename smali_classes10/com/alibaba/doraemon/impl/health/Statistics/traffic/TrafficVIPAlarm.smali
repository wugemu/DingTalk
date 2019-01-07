.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;
.super Ljava/lang/Object;
.source "TrafficVIPAlarm.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/health/Statistics/VIPAlarmBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/impl/health/Statistics/VIPAlarmBase",
        "<",
        "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIP_TYPE_TRAFFIC:I = 0x1


# instance fields
.field private mBGTraffic:F

.field private mBGWarned:Z

.field mContext:Landroid/content/Context;

.field private mFileNameSdf:Ljava/text/SimpleDateFormat;

.field private mRecordDateStr:Ljava/lang/String;

.field private mTraffic:F

.field private mWarned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGWarned:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mWarned:Z

    return-void
.end method

.method private getTrafficTrace()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v5, ""

    .line 100
    .local v5, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 101
    .local v2, "logBytes":[B
    const/4 v3, 0x0

    .line 102
    .local v3, "outputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    const/4 v4, 0x0

    .line 104
    .local v4, "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream()Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v3

    .line 105
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 106
    .local v1, "curDate":Ljava/util/Date;
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 111
    .local v7, "zeroDate":Ljava/util/Date;
    const-string/jumbo v8, "traffic_sm"

    invoke-static {v3, v8, v7, v1}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 112
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->size()I

    move-result v6

    .line 113
    .local v6, "size":I
    if-lez v6, :cond_0

    .line 114
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v4

    .line 116
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v8, v2, v9, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V

    .line 117
    new-instance v5, Ljava/lang/String;

    .end local v5    # "result":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {v5, v2, v8, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 123
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 125
    :cond_1
    if-eqz v4, :cond_2

    .line 126
    invoke-interface {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    :cond_2
    return-object v5

    .line 122
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "zeroDate":Ljava/util/Date;
    :catchall_0
    move-exception v8

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 123
    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 125
    :cond_3
    if-eqz v4, :cond_4

    .line 126
    invoke-interface {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    :cond_4
    throw v8
.end method


# virtual methods
.method public checkWarn(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "incInfo"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 61
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->isVipUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mFileNameSdf:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "newDateStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mRecordDateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->clearTrafficRecord(Landroid/content/Context;)V

    .line 70
    iput v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    .line 71
    iput-boolean v7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGWarned:Z

    .line 73
    iput v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    .line 74
    iput-boolean v7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mWarned:Z

    .line 75
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mRecordDateStr:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mRecordDateStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putTrafficDate(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    :cond_2
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    iget-wide v2, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    iget-wide v4, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    add-long/2addr v2, v4

    long-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    .line 80
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putBGTraffic(Landroid/content/Context;F)V

    .line 81
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGWarned:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getBgTrafficThreshold()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 82
    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->getTrafficTrace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->notifyHealthWarn(I[Ljava/lang/Object;)V

    .line 83
    iput-boolean v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGWarned:Z

    .line 84
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putBGTrafficWarned(Landroid/content/Context;Z)V

    .line 87
    :cond_3
    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    iget-wide v2, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    iget-wide v4, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    add-long/2addr v2, v4

    iget-wide v4, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    add-long/2addr v2, v4

    iget-wide v4, p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    add-long/2addr v2, v4

    long-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    .line 88
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putTraffic(Landroid/content/Context;F)V

    .line 89
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mWarned:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getTotalTrafficThreshold()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 90
    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->getTrafficTrace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->notifyHealthWarn(I[Ljava/lang/Object;)V

    .line 91
    iput-boolean v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mWarned:Z

    .line 92
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putTrafficWarned(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic checkWarn(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->checkWarn(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mFileNameSdf:Ljava/text/SimpleDateFormat;

    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getTrafficDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mRecordDateStr:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getBGTraffic(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGTraffic:F

    .line 52
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getBGTrafficWarned(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mBGWarned:Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getTraffic(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mTraffic:F

    .line 55
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getTrafficWarned(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficVIPAlarm;->mWarned:Z

    .line 56
    return-void
.end method
