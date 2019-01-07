.class public Lcom/ta/audid/device/AppUtdid;
.super Ljava/lang/Object;
.source "AppUtdid.java"


# static fields
.field private static final V5:I = 0x5

.field private static final mInstance:Lcom/ta/audid/device/AppUtdid;


# instance fields
.field private mAppUtdid:Ljava/lang/String;

.field private mUtdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/ta/audid/device/AppUtdid;

    invoke-direct {v0}, Lcom/ta/audid/device/AppUtdid;-><init>()V

    sput-object v0, Lcom/ta/audid/device/AppUtdid;->mInstance:Lcom/ta/audid/device/AppUtdid;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/ta/audid/device/AppUtdid;)V
    .locals 0
    .param p0, "x0"    # Lcom/ta/audid/device/AppUtdid;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->writeSdcardDevice()V

    return-void
.end method

.method static synthetic access$100(Lcom/ta/audid/device/AppUtdid;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ta/audid/device/AppUtdid;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/ta/audid/device/AppUtdid;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ta/audid/device/AppUtdid;->mInstance:Lcom/ta/audid/device/AppUtdid;

    return-object v0
.end method

.method private getV5Utdid()Ljava/lang/String;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x5

    .line 83
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 85
    const-string/jumbo v2, ""

    .line 159
    :cond_0
    :goto_0
    return-object v2

    .line 88
    :cond_1
    invoke-static {}, Lcom/ta/audid/utils/AppInfoUtils;->isBelowMVersion()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    invoke-static {v0}, Lcom/ta/audid/upload/UtdidKeyFile;->getUtdidFromSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "utdidFromSettings":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 91
    invoke-static {v3}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v4

    .line 92
    .local v4, "utdidObj":Lcom/ta/audid/device/UtdidObj;
    invoke-virtual {v4}, Lcom/ta/audid/device/UtdidObj;->isValid()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 93
    invoke-static {v3}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    move-object v2, v3

    .line 95
    goto :goto_0

    .line 100
    .end local v3    # "utdidFromSettings":Ljava/lang/String;
    .end local v4    # "utdidObj":Lcom/ta/audid/device/UtdidObj;
    :cond_2
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readSdcardUtdidFile()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "utdidFromSdcard":Ljava/lang/String;
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readAppUtdidFile()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "utdidFromApp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 103
    .local v8, "utdidObjFromSdcard":Lcom/ta/audid/device/UtdidObj;
    const-wide/16 v10, 0x0

    .line 105
    .local v10, "utdidObjFromSdcardTimestamp":J
    const-wide/16 v6, 0x0

    .line 106
    .local v6, "utdidObjFromAppTimestamp":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    invoke-static {v2}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v8

    .line 109
    if-eqz v8, :cond_3

    .line 110
    invoke-virtual {v8}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 111
    const-string/jumbo v2, ""

    .line 112
    const-string/jumbo v9, ""

    invoke-static {v9}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 119
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    move-object v5, v8

    .line 126
    .local v5, "utdidObjFromApp":Lcom/ta/audid/device/UtdidObj;
    :goto_2
    if-eqz v5, :cond_4

    .line 127
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v9

    if-eq v9, v12, :cond_7

    .line 128
    const-string/jumbo v1, ""

    .line 129
    const-string/jumbo v9, ""

    invoke-static {v9}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 136
    .end local v5    # "utdidObjFromApp":Lcom/ta/audid/device/UtdidObj;
    :cond_4
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 140
    cmp-long v9, v10, v6

    if-ltz v9, :cond_8

    .line 141
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_5
    invoke-virtual {v8}, Lcom/ta/audid/device/UtdidObj;->getTimestamp()J

    move-result-wide v10

    goto :goto_1

    .line 123
    :cond_6
    invoke-static {v1}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v5

    .restart local v5    # "utdidObjFromApp":Lcom/ta/audid/device/UtdidObj;
    goto :goto_2

    .line 131
    :cond_7
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getTimestamp()J

    move-result-wide v6

    goto :goto_3

    .line 145
    .end local v5    # "utdidObjFromApp":Lcom/ta/audid/device/UtdidObj;
    :cond_8
    invoke-static {v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 146
    invoke-static {v0, v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v1

    .line 147
    goto/16 :goto_0

    .line 150
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 151
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 155
    invoke-static {v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v1

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_b
    const-string/jumbo v2, ""

    goto/16 :goto_0
.end method

.method private uploadAppUtdid()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 165
    iget-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ta/audid/device/AppUtdid$1;

    invoke-direct {v1, p0}, Lcom/ta/audid/device/AppUtdid$1;-><init>(Lcom/ta/audid/device/AppUtdid;)V

    .line 186
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/ta/audid/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeSdcardDevice()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {v0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "imsi":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ta/audid/store/SdcardDeviceModle;->writeSdcardDeviceModle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCurrentAppUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUtdid()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-object v1

    .line 46
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/audid/device/AppUtdid;->getUtdidFromFile()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "utdid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->uploadAppUtdid()V

    .line 49
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v1, "ffffffffffffffffffffffff"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "utdid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUtdidFromFile()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->lockUtdidFile()V

    .line 59
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->getV5Utdid()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "utdid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read from NewFile:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    .line 79
    .end local v1    # "utdid":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 67
    .restart local v1    # "utdid":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read from OldFile:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    .line 79
    .end local v1    # "utdid":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    goto :goto_1

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    throw v2
.end method

.method public declared-synchronized setAppUtdid(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUtdid"    # Ljava/lang/String;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
