.class public Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field private e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->c:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    if-eqz p0, :cond_0

    .line 245
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    :try_start_1
    const-string/jumbo v0, "code"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v0, "message"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 258
    :cond_0
    :goto_1
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    if-eqz p0, :cond_0

    .line 324
    const-string/jumbo v1, "sceneId"

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v1, "bizId"

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v1, "verifyType"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    return-object v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 2

    .prologue
    .line 2161
    if-nez p3, :cond_1

    .line 2162
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "notifyListenerResult task is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2166
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "no listener to callback"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2169
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "notifyListenerResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2180
    :cond_3
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0

    .line 2181
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2182
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, p4}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0

    .line 2183
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2184
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSlientModule(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;)V

    .line 338
    const-string/jumbo v1, "nextVerifyId"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    .line 339
    const-string/jumbo v1, "nextModuleData"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    .line 340
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[addSlientModule] nextVerifyId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , nextModuleData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    .line 343
    return-void
.end method

.method public declared-synchronized addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->needCleanTasks()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->exit()V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 132
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v3, "addTaskInstace\u8017\u65f6\uff1a"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1141
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "handleTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setTaskStatus(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;)V

    .line 1144
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    .line 1146
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;

    move-result-object v7

    .line 1147
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150810-1"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "mdhxhssdk"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->mTaskStartTime:J

    .line 1149
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->startVerifyTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->getInstance()Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v3, "no need to clean tasks"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAllTasks()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "clear all tasks"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "subCode"

    const-string/jumbo v3, "101"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v2, "clearAllTasks error: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needCleanTasks()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskStatus()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 310
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "no task on going"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    monitor-enter p0

    if-nez p4, :cond_0

    .line 197
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "notifyVerifyTaskResult task is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->canTaskContinue(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u4e0a\u4e0b\u6587\u4e2dtask\u4e0e\u5f53\u524dtask\u5339\u914d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {p4, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setTaskStatus(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;)V

    .line 208
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_3
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u4e0a\u4e0b\u6587\u4e2dtask\u4e0e\u5f53\u524dtask\u4e0d\u5339\u914d\uff0c\u672c\u6b21\u4efb\u52a1\u5df2\u8fc7\u671f\uff08\u4e4b\u524d\u5df2\u56de\u8c03\uff09\uff0c\u4e0d\u518d\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 73
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "onTaskOver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)Ljava/util/HashMap;

    move-result-object v7

    .line 76
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "lastReportTime"

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150810-4"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "mdtchssdk"

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->mTaskStartTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    move-object v5, p1

    .line 80
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    .line 84
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;)V

    const-string/jumbo v0, "SlientModule"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    :cond_0
    iput-object v10, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    .line 93
    const/4 v0, 0x1

    const-string/jumbo v1, "sdkExit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(ZLjava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b()V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->getInstance()Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->cancel()V

    .line 96
    return-void
.end method

.method public declared-synchronized preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 281
    monitor-enter p0

    const/4 v1, 0x1

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v2

    .line 1295
    if-eqz v2, :cond_0

    .line 1296
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->$SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1301
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 283
    :goto_0
    if-eqz v2, :cond_1

    .line 285
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is already exist in currentTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :goto_1
    monitor-exit p0

    return v0

    .line 1298
    :pswitch_0
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1304
    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
