.class public Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;
    }
.end annotation


# static fields
.field public static final CLOUD_SETTING_KEY_STEP:Ljava/lang/String; = "step"

.field public static final CLOUD_SETTING_MODULE_DT_HEALTH:Ljava/lang/String; = "dt_health"

.field private static final COLD_UPLOAD_INTERVAL_MILLIS:I = 0x2bf20

.field private static final DEFAULT_LOCAL_SAVE_INTERVAL:J = 0xea60L

.field private static final DEFAULT_REMOTE_UPLOAD_INTERVAL:J = 0xdbba0L

.field public static final ERROR_CODE_NOT_SUPPORT:I = -0x2

.field private static final MAX_INTERVAL:J = 0x36ee80L

.field private static final MAX_STEP_PER_SECOND:F = 4.0f

.field private static final MAX_VALID_STEPS:I = 0x989680

.field private static final MILL_SECONDS_ONE_DAY:J = 0x5265c00L

.field private static final PREF_KEY_STEP_COUNTER_UPLOAD:Ljava/lang/String; = "pref_key_step_counter_upload"

.field private static final PREF_KEY_STEP_LAST_COLD_UPLOAD_TIME:Ljava/lang/String; = "pref_key_step_last_cold_upload_time"

.field private static final PREF_KEY_STEP_LAST_SAVED_STEP_TIME:Ljava/lang/String; = "pref_key_step_last_saved_step_time"

.field private static final PREF_KEY_STEP_LAST_SAVED_STEP_TOTALSTEP:Ljava/lang/String; = "pref_key_step_last_saved_step_totalstep"

.field private static final PREF_KEY_STEP_LAST_UPLOAD_HISTORY_TIME:Ljava/lang/String; = "pref_key_step_last_upload_history_time"

.field private static final REMOTE_UPLOAD_INTERVAL_SECS:I = 0x384

.field private static final SENSOR_DELAY_US:I = 0x4c4b40

.field private static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "StepCountManager"

.field private static final STEPS_UPDATE_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "StepCountManager"

.field private static final TOKEN_LOCAL_SAVE_RUNNABLE:Ljava/lang/String; = "token_local_save_runnable"

.field private static final TOKEN_REMOTE_UPLOAD_RUNNABLE:Ljava/lang/String; = "token_remote_upload_runnable"

.field public static final TRACE_TAG:Ljava/lang/String; = "stepcount"

.field private static sInstance:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHistoryStepUploaded:Z

.field private mHistoryUploadTime:J

.field private mInitialSave:Z

.field private volatile mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

.field private mLastStepsInvalid:Z

.field private volatile mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

.field private mLocalSaveInterval:J

.field private mRemoteUploadInterval:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCountSensor:Landroid/hardware/Sensor;

.field private mStepCountingStarted:Z

.field private mSystemSensorRegistered:Z

.field private mUploadIntervalCloudSetting:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    .line 117
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    .line 118
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    .line 121
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 123
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastStepsInvalid:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryStepUploaded:Z

    .line 137
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->reset()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->startInitialUpload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->performRemoteUpload(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Ljava/util/Calendar;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Ljava/util/Calendar;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->remoteUploadHistorySteps(Ljava/util/Calendar;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryStepUploaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryUploadTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryUploadTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->syncUserStepsFromRemote()V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->performLocalSave(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->doLocalSave()V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    return-void
.end method

.method private decodeUid(Ljava/lang/String;)J
    .locals 6
    .param p1, "encodeUid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 183
    .local v0, "codedUid":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 191
    .end local v0    # "codedUid":Lcom/laiwang/protocol/media/MediaId;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 191
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_0
    :goto_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized doLocalSave()V
    .locals 24

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 650
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->from(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v15

    .line 651
    .local v15, "latestSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->from(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v14

    .line 652
    .local v14, "lastSavedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    if-eqz v15, :cond_0

    if-nez v14, :cond_1

    .line 798
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 652
    .end local v14    # "lastSavedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .end local v15    # "latestSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 649
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 658
    .restart local v14    # "lastSavedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .restart local v15    # "latestSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_1
    :try_start_4
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v11

    .line 659
    .local v11, "calendar":Ljava/util/Calendar;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 660
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x6

    .line 661
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 660
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lhfz;->a(II)Ljava/util/List;

    move-result-object v17

    .line 662
    .local v17, "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "todayStepCounts="

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "lastSavedSteps="

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "latestSteps="

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 666
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v6

    .line 668
    .local v6, "deviceSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    const-string/jumbo v18, "step"

    const-string/jumbo v19, "stepcount"

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string/jumbo v21, "doLocalSave,deviceSteps = "

    aput-object v21, v20, v4

    const/16 v21, 0x1

    if-nez v6, :cond_5

    const-string/jumbo v4, "null"

    .line 669
    :goto_1
    aput-object v4, v20, v21

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 668
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 v7, 0x0

    .line 673
    .local v7, "deltaSteps":I
    if-eqz v6, :cond_2

    .line 674
    iget v4, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v4, v0, :cond_6

    .line 675
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "checking missed steps:"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 676
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, " VS "

    aput-object v21, v19, v20

    const/16 v20, 0x3

    iget v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 677
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, " vs "

    aput-object v21, v19, v20

    const/16 v20, 0x5

    iget v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 676
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 675
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget v4, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v18, v0

    sub-int v4, v4, v18

    add-int/lit8 v7, v4, 0x0

    .line 680
    iget v4, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 681
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v18, "H5"

    const-string/jumbo v19, "stepcount"

    const-string/jumbo v20, "step-missed"

    const-string/jumbo v21, "step-missed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v4, "checking missed steps"

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 702
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 703
    .local v5, "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v4, v18, v20

    if-lez v4, :cond_3

    .line 704
    const/4 v4, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lccr;->c()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v5

    .line 707
    :cond_3
    iget v4, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget v0, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v18, v0

    sub-int v4, v4, v18

    add-int/2addr v7, v4

    .line 710
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v10

    .line 711
    .local v10, "c":Ljava/util/Calendar;
    iget-wide v0, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 714
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v12

    .line 715
    .local v12, "currentZero":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 716
    const/16 v4, 0xb

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 717
    const/16 v4, 0xc

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 718
    const/16 v4, 0xd

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 719
    const/16 v4, 0xe

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 722
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v8, v18, v20

    .line 724
    .local v8, "currentTimeSlice":J
    const/4 v13, 0x0

    .line 727
    .local v13, "doUpdateUserStep":Z
    const/4 v4, 0x6

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    const/4 v4, 0x1

    .line 728
    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    .line 729
    const/4 v13, 0x1

    .line 755
    :goto_3
    if-eqz v13, :cond_4

    .line 756
    if-ltz v7, :cond_a

    const v4, 0x186a0

    if-ge v7, v4, :cond_a

    .line 758
    if-nez v6, :cond_9

    .line 759
    new-instance v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .end local v6    # "deviceSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    invoke-direct {v6}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    .line 760
    .restart local v6    # "deviceSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    iput v7, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 761
    iget v4, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 762
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 763
    iget-wide v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 764
    const/4 v4, 0x0

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 765
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v4

    invoke-virtual {v4, v6}, Lhfz;->a(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    .line 766
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "insert device step: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 767
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, ", "

    aput-object v21, v19, v20

    const/16 v20, 0x3

    iget v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 768
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, ", "

    aput-object v21, v19, v20

    const/16 v20, 0x5

    iget-wide v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 767
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 766
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v4, p0

    .line 778
    invoke-direct/range {v4 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->updateUserStep(Lcom/alibaba/lightapp/runtime/database/StepCountObject;Lcom/alibaba/lightapp/runtime/database/StepCountObject;IJ)V

    .line 785
    :cond_4
    :goto_5
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "doLocalSave,lastSavedSteps:"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 786
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, " lastSavedTime:"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, " mLatestSteps:"

    aput-object v21, v19, v20

    const/16 v20, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 787
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x6

    const-string/jumbo v21, " mLatestTime:"

    aput-object v21, v19, v20

    const/16 v20, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 785
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 789
    :try_start_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 790
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 792
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->doSaveLastSensorStepToSp(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    .line 794
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v4

    invoke-virtual {v4}, Lhfz;->d()V

    .line 796
    const-string/jumbo v4, "performLocalSave"

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 797
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(Z)V

    goto/16 :goto_0

    .line 669
    .end local v5    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .end local v7    # "deltaSteps":I
    .end local v8    # "currentTimeSlice":J
    .end local v10    # "c":Ljava/util/Calendar;
    .end local v12    # "currentZero":Ljava/util/Calendar;
    .end local v13    # "doUpdateUserStep":Z
    :cond_5
    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 684
    .restart local v7    # "deltaSteps":I
    :cond_6
    iget v4, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 685
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "checking sensor reset steps:"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 686
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, " VS "

    aput-object v21, v19, v20

    const/16 v20, 0x3

    iget v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    .line 687
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, " vs "

    aput-object v21, v19, v20

    const/16 v20, 0x5

    iget v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 686
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 685
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v18, "f_sport_disable_add_sensor_reset_steps"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 693
    iget v4, v14, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    add-int/lit8 v7, v4, 0x0

    .line 695
    :cond_7
    iget v4, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 696
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v18, "H5"

    const-string/jumbo v19, "stepcount"

    const-string/jumbo v20, "sensor-reset"

    const-string/jumbo v21, "sensor-reset"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string/jumbo v4, "checking reset sensor steps"

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 731
    .restart local v5    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .restart local v8    # "currentTimeSlice":J
    .restart local v10    # "c":Ljava/util/Calendar;
    .restart local v12    # "currentZero":Ljava/util/Calendar;
    .restart local v13    # "doUpdateUserStep":Z
    :cond_8
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v16

    .line 733
    .local v16, "latestdate":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 734
    const/16 v4, 0xb

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 735
    const/16 v4, 0xc

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 736
    const/16 v4, 0xd

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 737
    const/16 v4, 0xe

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 739
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    const-string/jumbo v19, "step from yesterday will be abandoned!"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 771
    .end local v16    # "latestdate":Ljava/util/Calendar;
    :cond_9
    iget v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 772
    iget v4, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 773
    const/4 v4, 0x0

    iput v4, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 774
    iget-wide v0, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 775
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v4

    invoke-virtual {v4, v6}, Lhfz;->b(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    goto/16 :goto_4

    .line 781
    :cond_a
    const-string/jumbo v4, "step"

    const-string/jumbo v18, "stepcount"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "invalid delta steps "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 790
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method private doRemoteUploadHistorySteps(Ljava/util/Calendar;Ljava/util/Calendar;Lcmi;)V
    .locals 11
    .param p1, "startDate"    # Ljava/util/Calendar;
    .param p2, "endDate"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1034
    .local p3, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    if-nez p2, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1038
    :cond_0
    const/4 v8, 0x0

    .line 1039
    .local v8, "daysDiff":I
    if-eqz p1, :cond_1

    .line 1040
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1041
    .local v0, "startOfStartDate":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 1042
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1041
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1044
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 1045
    .local v1, "startOfToday":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 1046
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1045
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1048
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v8, v2

    .line 1051
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1053
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "doRemoteUploadHistorySteps daysDiff = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " startOfToday:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1054
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " and startOfStartDate:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1053
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v0    # "startOfStartDate":Ljava/util/Calendar;
    .end local v1    # "startOfToday":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v2

    neg-int v3, v8

    invoke-virtual {v2, p2, v3}, Lhfz;->a(Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v9

    .line 1060
    .local v9, "historyStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    const/4 v2, 0x0

    .line 1061
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    .line 1060
    invoke-direct {p0, v9, v2, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findHistoryLocalStepCounts(Ljava/util/List;IJ)Ljava/util/List;

    move-result-object v10

    .line 1063
    .local v10, "historySteps":Ljava/util/List;, "Ljava/util/List<Lhkf;>;"
    const-class v2, Lcom/alibaba/lightapp/runtime/idl/HealthIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/idl/HealthIService;

    invoke-interface {v2, v10, p3}, Lcom/alibaba/lightapp/runtime/idl/HealthIService;->uploadSteps(Ljava/util/List;Lcmi;)V

    goto/16 :goto_0
.end method

.method private doSaveLastSensorStepToSp(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V
    .locals 4
    .param p1, "lastSavedSteps"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 805
    if-eqz p1, :cond_0

    .line 807
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_key_step_last_saved_step_time"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 808
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_key_step_last_saved_step_totalstep"

    iget v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 811
    :cond_0
    return-void
.end method

.method private filterBySteps(I)Z
    .locals 11
    .param p1, "sensorStepOrig"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    int-to-long v2, p1

    .line 417
    .local v2, "sensorStep":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    int-to-long v6, v6

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x989680

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 418
    :cond_0
    const-string/jumbo v6, "step"

    const-string/jumbo v7, "stepcount"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "invalid step: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 419
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " : "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v10, v10, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v6, 0x1

    .line 453
    :goto_0
    return v6

    .line 423
    :cond_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 425
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 426
    .local v0, "deltaT":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 427
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    int-to-long v6, v6

    sub-long v6, v2, v6

    div-long v4, v6, v0

    .line 429
    .local v4, "stepsPerSec":J
    const-wide/16 v6, 0x8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 430
    const-string/jumbo v6, "step"

    const-string/jumbo v7, "stepcount"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Step rate over limit: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 431
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v6, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "deltaT":J
    .end local v4    # "stepsPerSec":J
    :cond_2
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 441
    const-string/jumbo v6, "vivo"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    const v7, 0xffff

    if-ne v6, v7, :cond_3

    .line 442
    const/4 v6, 0x0

    goto :goto_0

    .line 445
    :cond_3
    const-string/jumbo v6, "step"

    const-string/jumbo v7, "stepcount"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ignore backward sensor step:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v10, v10, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 446
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v10, v10, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 447
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", "

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 446
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 445
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "H5"

    const-string/jumbo v8, "stepcount"

    const-string/jumbo v9, "backward-sensor-step"

    const-string/jumbo v10, "backward-sensor-step"

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 453
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private findHistoryLocalStepCounts(Ljava/util/List;IJ)Ljava/util/List;
    .locals 9
    .param p2, "status"    # I
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;",
            ">;IJ)",
            "Ljava/util/List",
            "<",
            "Lhkf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, "stepCountObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lhkf;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .local v4, "stepsLogStrBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1080
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 1081
    .local v3, "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-eqz v3, :cond_0

    .line 1086
    iget v5, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    if-ne v5, p2, :cond_0

    iget-wide v6, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    cmp-long v5, v6, p3

    if-nez v5, :cond_0

    .line 1087
    new-instance v1, Lhkf;

    invoke-direct {v1}, Lhkf;-><init>()V

    .line 1088
    .local v1, "model":Lhkf;
    iget v5, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lhkf;->a:Ljava/lang/Integer;

    .line 1089
    iget-wide v6, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lhkf;->b:Ljava/lang/Long;

    .line 1090
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string/jumbo v5, "##["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]:{steps = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1093
    iget v6, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 1094
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .end local v1    # "model":Lhkf;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    .end local v3    # "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_1
    const-string/jumbo v5, "step"

    const-string/jumbo v6, "stepcount"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .end local v0    # "index":I
    .end local v4    # "stepsLogStrBuilder":Ljava/lang/StringBuilder;
    :cond_2
    return-object v2
.end method

.method private findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .locals 9
    .param p2, "status"    # I
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;",
            ">;IJ)",
            "Lcom/alibaba/lightapp/runtime/database/StepCountObject;"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "stepCountObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 852
    const-wide/16 v4, 0x0

    .line 853
    .local v4, "timestamp":J
    const/4 v0, -0x1

    .line 854
    .local v0, "finalIndex":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 855
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 856
    .local v2, "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-eqz v2, :cond_0

    .line 860
    iget v3, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    if-ne v3, p2, :cond_0

    iget-wide v6, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    cmp-long v3, v6, p3

    if-nez v3, :cond_0

    iget-wide v6, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 862
    iget-wide v4, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 863
    move v0, v1

    .line 854
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "stepCountObject":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 868
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .line 872
    .end local v0    # "finalIndex":I
    .end local v1    # "index":I
    .end local v4    # "timestamp":J
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1106
    invoke-static {}, Lhrm;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const-class v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->sInstance:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->sInstance:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .line 160
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->sInstance:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSaveInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    return-wide v0
.end method

.method private getUploadInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    return-wide v0
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.step.upload.interval.UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 319
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v1, "normalIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.user.login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v2, "com.workapp.user.logout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isStepCountingStarted()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountingStarted:Z

    return v0
.end method

.method public static isSupportStepCount(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    .local v0, "currentApiVersion":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 152
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const-string/jumbo v2, "android.hardware.sensor.stepcounter"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSystemSensorRegistered()Z
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSystemSensorRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "StepCountManager"

    const/4 v1, 0x3

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "StepCountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method private performLocalSave(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 12
    .param p1, "force"    # Z
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "skipLocalSave":Z
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mInitialSave:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-gt v1, v2, :cond_4

    .line 543
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    cmp-long v1, v2, v10

    if-gez v1, :cond_1

    .line 544
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    mul-long/2addr v2, v8

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    .line 546
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    cmp-long v1, v2, v10

    if-gez v1, :cond_2

    .line 547
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    mul-long/2addr v2, v8

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    .line 549
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "skip local save, next check in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(Z)V

    .line 552
    const/4 v0, 0x1

    .line 559
    :goto_0
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "local save:"

    aput-object v4, v3, v5

    .line 560
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 561
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 560
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    if-eqz v0, :cond_6

    .line 563
    if-eqz p1, :cond_5

    .line 564
    invoke-direct {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 579
    :cond_3
    :goto_1
    return-void

    .line 554
    :cond_4
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLocalSaveInterval:J

    .line 555
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    .line 556
    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mInitialSave:Z

    goto :goto_0

    .line 565
    :cond_5
    if-eqz p2, :cond_3

    .line 566
    invoke-interface {p2, v6}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;->onStepsUploaded(Z)V

    goto :goto_1

    .line 569
    :cond_6
    const-string/jumbo v1, "StepCountManager"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private performRemoteUpload(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 900
    const-string/jumbo v0, "StepCountManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method

.method private remoteUploadHistorySteps(Ljava/util/Calendar;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 20
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "uploadCallback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    .prologue
    .line 938
    if-nez p1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v10, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Lhfz;->a(II)Ljava/util/List;

    move-result-object v16

    .line 942
    .local v16, "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    const/4 v2, 0x0

    .line 943
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v15

    .line 944
    .local v15, "todayLocalSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    const/4 v2, 0x1

    .line 945
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v4

    .line 948
    .local v4, "todayUploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-eqz v15, :cond_2

    if-eqz v4, :cond_4

    iget v2, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    iget v3, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    if-gt v2, v3, :cond_4

    :cond_2
    const/4 v13, 0x1

    .line 949
    .local v13, "skip":Z
    :goto_1
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v17, "upload for "

    aput-object v17, v10, v11

    const/4 v11, 0x1

    .line 950
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v17, ": "

    aput-object v17, v10, v11

    const/4 v11, 0x3

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 949
    invoke-static {v2, v3, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "performRemoteUpload\uff0cskip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 952
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryStepUploaded:Z

    if-eqz v2, :cond_8

    .line 955
    :cond_3
    if-nez v15, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 956
    .local v5, "localStep":Ljava/lang/Integer;
    if-nez v15, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 957
    .local v6, "localTimestamp":J
    :goto_3
    if-nez v15, :cond_7

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v8

    .line 960
    .local v8, "localUid":J
    :goto_4
    new-instance v14, Lhkf;

    invoke-direct {v14}, Lhkf;-><init>()V

    .line 961
    .local v14, "stepModel":Lhkf;
    iput-object v5, v14, Lhkf;->a:Ljava/lang/Integer;

    .line 962
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v14, Lhkf;->b:Ljava/lang/Long;

    .line 965
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v12

    .line 966
    .local v12, "lastSavedCalendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryUploadTime:J

    invoke-virtual {v12, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 968
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/database/StepCountObject;Ljava/lang/Integer;JJLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;Ljava/util/Calendar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->doRemoteUploadHistorySteps(Ljava/util/Calendar;Ljava/util/Calendar;Lcmi;)V

    goto/16 :goto_0

    .line 948
    .end local v5    # "localStep":Ljava/lang/Integer;
    .end local v6    # "localTimestamp":J
    .end local v8    # "localUid":J
    .end local v12    # "lastSavedCalendar":Ljava/util/Calendar;
    .end local v13    # "skip":Z
    .end local v14    # "stepModel":Lhkf;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 955
    .restart local v13    # "skip":Z
    :cond_5
    iget v2, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    goto :goto_2

    .line 956
    .restart local v5    # "localStep":Ljava/lang/Integer;
    :cond_6
    iget-wide v6, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    goto :goto_3

    .line 957
    .restart local v6    # "localTimestamp":J
    :cond_7
    iget-wide v8, v15, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    goto :goto_4

    .line 1020
    .end local v5    # "localStep":Ljava/lang/Integer;
    .end local v6    # "localTimestamp":J
    :cond_8
    if-eqz p2, :cond_0

    .line 1021
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;->onStepsUploaded(Z)V

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->reset()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iput v4, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_key_step_last_saved_step_time"

    invoke-static {v1, v2}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_key_step_last_saved_step_totalstep"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->reset()V

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_key_step_last_upload_history_time"

    invoke-static {v0, v1}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mHistoryUploadTime:J

    .line 173
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "reset(),lastSavedSteps:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v4, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 174
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " lastSavedTime:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " mLatestSteps:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v4, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 175
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " mLatestTime:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 173
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private scheduleNextLocalSave(Z)V
    .locals 2
    .param p1, "immediately"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(ZZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 537
    return-void
.end method

.method private scheduleNextLocalSave(ZZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 8
    .param p1, "immediately"    # Z
    .param p2, "force"    # Z
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    const-wide/16 v0, 0x0

    .line 522
    .local v0, "saveInterval":J
    if-nez p1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getSaveInterval()J

    move-result-wide v0

    .line 526
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    const-string/jumbo v3, "token_local_save_runnable"

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 527
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;

    invoke-direct {v3, p0, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    const-string/jumbo v4, "token_local_save_runnable"

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 527
    invoke-virtual {v2, v3, v4, v6, v7}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 533
    return-void
.end method

.method private scheduleNextRemoteUpload(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 877
    return-void
.end method

.method private scheduleNextRemoteUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 8
    .param p1, "immediately"    # Z
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 880
    const-wide/16 v0, 0x0

    .line 881
    .local v0, "uploadInterval":J
    if-nez p1, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getUploadInterval()J

    move-result-wide v0

    .line 883
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 884
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "stop upload for interval "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 885
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 884
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    const-string/jumbo v3, "token_remote_upload_runnable"

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 891
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    const-string/jumbo v4, "token_remote_upload_runnable"

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 891
    invoke-virtual {v2, v3, v4, v6, v7}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method

.method private startInitialUpload()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_step_last_cold_upload_time"

    invoke-static {v2, v3}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 276
    .local v0, "lastColdUploadTime":J
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private syncUserStepsFromRemote()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 582
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const-string/jumbo v0, "StepCountManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateUploadInterval()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 326
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "intent_key_step_upload_interval"

    const/16 v3, 0x384

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 326
    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 328
    .local v0, "intervals":I
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    .line 329
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 330
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mUploadIntervalCloudSetting:J

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    .line 331
    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(Z)V

    .line 332
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "upload interval:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mRemoteUploadInterval:J

    .line 333
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method private updateUserStep(Lcom/alibaba/lightapp/runtime/database/StepCountObject;Lcom/alibaba/lightapp/runtime/database/StepCountObject;IJ)V
    .locals 10
    .param p1, "userSteps"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .param p2, "deviceSteps"    # Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .param p3, "deltaSteps"    # I
    .param p4, "timeSlice"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 814
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    .line 847
    :goto_0
    return-void

    .line 819
    :cond_0
    if-nez p1, :cond_1

    .line 820
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->from(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object p1

    .line 822
    iput v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 823
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 824
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lhfz;->a(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    goto :goto_0

    .line 829
    :cond_1
    iget v3, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    add-int v0, v3, p3

    .line 830
    .local v0, "currentStep":I
    long-to-float v3, p4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v3, v6

    float-to-int v1, v3

    .line 831
    .local v1, "maxStepUptoNow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 834
    const-string/jumbo v6, "step"

    const-string/jumbo v7, "stepcount"

    const/16 v3, 0xc

    new-array v8, v3, [Ljava/lang/String;

    const-string/jumbo v3, "addUserStep:deltaSteps = "

    aput-object v3, v8, v2

    const/4 v3, 0x1

    .line 836
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x2

    const-string/jumbo v9, ", userSteps = "

    aput-object v9, v8, v3

    const/4 v3, 0x3

    if-nez p1, :cond_2

    .line 837
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x4

    const-string/jumbo v3, ", userStepTime = "

    aput-object v3, v8, v2

    const/4 v9, 0x5

    if-nez p1, :cond_3

    move-wide v2, v4

    .line 838
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x6

    const-string/jumbo v3, ", device.totalSteps = "

    aput-object v3, v8, v2

    const/4 v2, 0x7

    iget v3, p2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 839
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ",currentStep = "

    aput-object v3, v8, v2

    const/16 v2, 0x9

    .line 840
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0xa

    const-string/jumbo v3, ", maxStepUptoNow = "

    aput-object v3, v8, v2

    const/16 v2, 0xb

    .line 841
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 835
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-static {v6, v7, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iput v0, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 844
    iget-wide v2, p2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 845
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 846
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lhfz;->b(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    goto/16 :goto_0

    .line 836
    :cond_2
    iget v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    goto :goto_1

    .line 837
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    goto :goto_2
.end method


# virtual methods
.method public getCountingStatusObject()Lorg/json/JSONObject;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 476
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 478
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 479
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 480
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v9, 0x6

    .line 481
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 480
    invoke-virtual {v6, v7, v9}, Lhfz;->a(II)Ljava/util/List;

    move-result-object v3

    .line 482
    .local v3, "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    const/4 v6, 0x0

    .line 483
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    .line 482
    invoke-direct {p0, v3, v6, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v5

    .line 484
    .local v5, "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    const/4 v6, 0x1

    .line 485
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    .line 484
    invoke-direct {p0, v3, v6, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v4

    .line 489
    .local v4, "todayUploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    const-string/jumbo v6, "support"

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->isSupportStepCount(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 491
    const-string/jumbo v7, "stepCount"

    if-eqz v5, :cond_0

    iget v6, v5, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    :goto_0
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    const-string/jumbo v7, "lastUploadCount"

    if-eqz v4, :cond_1

    iget v6, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    :goto_1
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 495
    const-string/jumbo v9, "lastUploadTime"

    if-eqz v4, :cond_2

    iget-wide v6, v4, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    :goto_2
    invoke-virtual {v2, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 497
    const-string/jumbo v6, "countingStarted"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->isStepCountingStarted()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 499
    const-string/jumbo v6, "sensorInitialized"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->isSystemSensorRegistered()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 501
    const-string/jumbo v6, "uploadInterval"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getUploadInterval()J

    move-result-wide v10

    invoke-virtual {v2, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 503
    const-string/jumbo v6, "saveInterval"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getSaveInterval()J

    move-result-wide v10

    invoke-virtual {v2, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 505
    const-string/jumbo v6, "lastStepsInvalid"

    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastStepsInvalid:Z

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .end local v4    # "todayUploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .end local v5    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :goto_3
    return-object v2

    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .restart local v4    # "todayUploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .restart local v5    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_0
    move v6, v8

    .line 491
    goto :goto_0

    :cond_1
    move v6, v8

    .line 493
    goto :goto_1

    .line 495
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 506
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .end local v4    # "todayUploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    .end local v5    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "step"

    const-string/jumbo v7, "stepcount"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "getCountingStatusObject exception "

    aput-object v10, v9, v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v12

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getTodayStepCounts()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->isSupportStepCount(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountingStarted:Z

    if-nez v4, :cond_2

    .line 463
    :cond_0
    const/4 v3, -0x2

    .line 472
    :cond_1
    :goto_0
    return v3

    .line 466
    :cond_2
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 467
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 468
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x6

    .line 469
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 468
    invoke-virtual {v4, v5, v6}, Lhfz;->a(II)Ljava/util/List;

    move-result-object v1

    .line 471
    .local v1, "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    .line 470
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->findStepCount(Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v2

    .line 472
    .local v2, "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 458
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 363
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-int v0, v1

    .line 366
    .local v0, "sensorStep":I
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->filterBySteps(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastStepsInvalid:Z

    .line 367
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastStepsInvalid:Z

    if-eqz v1, :cond_1

    .line 368
    monitor-exit v2

    .line 411
    .end local v0    # "sensorStep":I
    :cond_0
    :goto_0
    return-void

    .line 371
    .restart local v0    # "sensorStep":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->reset()V

    .line 372
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iput v0, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 373
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 374
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-gez v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-lez v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v3, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 377
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v4, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 378
    const-string/jumbo v1, "step"

    const-string/jumbo v3, "stepcount"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "save for the first:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 379
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 380
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 379
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->startInitialUpload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mInitialSave:Z

    .line 385
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(ZZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 386
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_step_last_cold_upload_time"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 388
    const-string/jumbo v1, "step"

    const-string/jumbo v3, "stepcount"

    const-string/jumbo v4, "initial force upload"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    sub-int/2addr v1, v3

    const/16 v3, 0x64

    if-lt v1, v3, :cond_3

    .line 405
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(Z)V

    .line 407
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSensorChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    if-ge v1, v3, :cond_2

    .line 392
    const-string/jumbo v1, "step"

    const-string/jumbo v3, "stepcount"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "weird sensor step:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 393
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 394
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 393
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    iput v3, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->totalSteps:I

    .line 397
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLatestSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    iput-wide v4, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 400
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mLastSavedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->doSaveLastSensorStepToSp(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    goto :goto_1

    .line 407
    .end local v0    # "sensorStep":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startStepCount()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 211
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 212
    const-string/jumbo v0, "step"

    const-string/jumbo v2, "stepcount"

    const-string/jumbo v3, "manager is null"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 271
    :goto_0
    return v0

    .line 220
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    const v4, 0x4c4b40

    const/4 v5, 0x3

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 224
    invoke-virtual {v0, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->reset()V

    .line 228
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(Z)V

    .line 231
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const-string/jumbo v0, "pref_key_step_counter_upload"

    .line 232
    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->updateUploadInterval()V

    .line 237
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->initReceiver()V

    .line 252
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountingStarted:Z

    .line 253
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSystemSensorRegistered:Z

    .line 255
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v3, "step count started"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, "StepCountManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    move v0, v2

    .line 271
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    const-string/jumbo v0, "step"

    const-string/jumbo v3, "stepcount"

    const-string/jumbo v4, "get default sensor fail"

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSystemSensorRegistered:Z

    .line 258
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "step_register_error"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 259
    const-string/jumbo v0, "step"

    const-string/jumbo v2, "stepcount"

    const-string/jumbo v3, "error register sensor"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 260
    goto/16 :goto_0
.end method

.method public startUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 6
    .param p1, "upload"    # Z
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 195
    const-string/jumbo v0, "pref_key_step_counter_upload"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-direct {p0, v5, v5, p2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(ZZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 204
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload switch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "upload switch:"

    aput-object v4, v2, v3

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_remote_upload_runnable"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopStepCount()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 340
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountSensor:Landroid/hardware/Sensor;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 345
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountingStarted:Z

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(Z)V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->mStepCountingStarted:Z

    .line 352
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_local_save_runnable"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_remote_upload_runnable"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v2, "step count stopped"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method
