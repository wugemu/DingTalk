.class public Lmtopsdk/mtop/global/MtopSDK;
.super Ljava/lang/Object;
.source "MtopSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/global/MtopSDK$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSDK"

.field private static initLock:Ljava/lang/Object;

.field private static isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isInit:Z

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/mtop/global/MtopSDK;->isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lkkj;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lmtopsdk/mtop/global/MtopSDK;->executeInitCoreTask(Landroid/content/Context;Lkkj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->executeInitExtraTask(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method

.method static synthetic access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    .line 31
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->reInitISign(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    return-void
.end method

.method public static checkMtopSDKInit()V
    .locals 6

    .prologue
    .line 312
    sget-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-eqz v2, :cond_0

    .line 327
    .local v1, "logStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 315
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    sget-object v3, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    monitor-enter v3

    .line 317
    :try_start_0
    sget-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v2, :cond_1

    .line 318
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 319
    sget-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v2, :cond_1

    .line 320
    const-string/jumbo v1, "[checkMtopSDKInit]Didn\'t call MtopSDK.init(...),please execute global init."

    .line 321
    .restart local v1    # "logStr":Ljava/lang/String;
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[checkMtopSDKInit] wait MtopSDK initLock failed---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static executeInitCoreTask(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sign"    # Lkkj;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v3, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    :try_start_0
    sget-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-eqz v2, :cond_0

    .line 115
    monitor-exit v3

    .line 155
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[executeInitCoreTask]MtopSDK initcore start. ttid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    :try_start_1
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;

    .line 124
    invoke-static {p0}, Lkkn;->a(Landroid/content/Context;)V

    .line 126
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2, p2}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 129
    :cond_2
    if-nez p1, :cond_3

    .line 130
    new-instance v1, Lkkk;

    invoke-direct {v1}, Lkkk;-><init>()V

    .end local p1    # "sign":Lkkj;
    .local v1, "sign":Lkkj;
    move-object p1, v1

    .line 132
    .end local v1    # "sign":Lkkj;
    .restart local p1    # "sign":Lkkj;
    :cond_3
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v2

    invoke-interface {p1, p0, v2}, Lkkj;->a(Landroid/content/Context;I)V

    .line 133
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2, p1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalSign(Lkkj;)Lmtopsdk/mtop/global/SDKConfig;

    .line 134
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    new-instance v4, Lkkj$a;

    sget-object v5, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v5}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkkj$a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lkkj;->a(Lkkj$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 135
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalProcessId(I)Lmtopsdk/mtop/global/SDKConfig;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 141
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 143
    :goto_1
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    const-string/jumbo v4, "[executeInitCoreTask]MtopSDK initcore end"

    invoke-static {v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    new-instance v2, Lmtopsdk/mtop/global/MtopSDK$2;

    invoke-direct {v2, p0}, Lmtopsdk/mtop/global/MtopSDK$2;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[executeInitCoreTask]MtopSDK initcore error---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    const/4 v2, 0x1

    :try_start_4
    sput-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 141
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 140
    :catchall_1
    move-exception v2

    const/4 v4, 0x1

    :try_start_5
    sput-boolean v4, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 141
    sget-object v4, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static executeInitExtraTask(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    const-string/jumbo v2, "[executeInitExtraTask]MtopSDK initextra start"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/unit/UnitConfigManager;->loadUnitInfo()V

    .line 170
    invoke-static {}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 172
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmtopsdk/mtop/global/SwitchConfig;->initConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    const-string/jumbo v2, "[executeInitExtraTask]MtopSDK initextra end"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    const-string/jumbo v2, "[executeInitExtraTask] execute MtopSDK initExtraTask error.---"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v0, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lmtopsdk/mtop/global/MtopSDK;->init(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v1, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init]ttid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmtopsdk/mtop/global/MtopSDK;->init(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sign"    # Lkkj;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v3, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v3

    :try_start_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2, p2}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 82
    :cond_0
    sget-boolean v2, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v2, :cond_2

    .line 83
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v1, "log":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[init]call MtopSDK init, Threadinfo[name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v1    # "log":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;

    .line 90
    new-instance v0, Lmtopsdk/mtop/global/MtopSDK$1;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/global/MtopSDK$1;-><init>(Landroid/content/Context;Lkkj;Ljava/lang/String;)V

    .line 101
    .local v0, "initTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "initTask":Ljava/lang/Runnable;
    :cond_2
    monitor-exit v3

    return-void

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static reInitISign(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 5
    .param p0, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    .line 283
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lkkj;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 285
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v0

    .line 286
    .local v0, "index":I
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 287
    :cond_0
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDailyAppKeyIndex()I

    move-result v0

    .line 289
    :cond_1
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lkkj;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lkkj;->a(Landroid/content/Context;I)V

    .line 290
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lkkj;

    move-result-object v2

    new-instance v3, Lkkj$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lkkj$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lkkj;->a(Lkkj$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 293
    .end local v0    # "index":I
    :cond_2
    return-void
.end method

.method public static setLogSwitch(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 303
    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    .line 304
    return-void
.end method

.method public static declared-synchronized switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 5
    .param p0, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    .line 199
    const-class v2, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 277
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 203
    :cond_1
    :try_start_1
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->isApkDebug()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    const-string/jumbo v3, "release package can switch environment only once!"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 208
    :cond_2
    :try_start_2
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    const-string/jumbo v3, "[switchEnvMode]MtopSDK switchEnvMode Called"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_3
    new-instance v0, Lmtopsdk/mtop/global/MtopSDK$3;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/global/MtopSDK$3;-><init>(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 276
    .local v0, "switchEnvTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static unInit()V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lkkn;->a()V

    .line 187
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 189
    return-void
.end method
