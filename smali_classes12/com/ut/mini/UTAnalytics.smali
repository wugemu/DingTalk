.class public Lcom/ut/mini/UTAnalytics;
.super Ljava/lang/Object;
.source "UTAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTAnalytics"

.field private static volatile mInit:Z

.field private static volatile mInit4app:Z

.field private static s_instance:Lcom/ut/mini/UTAnalytics;


# instance fields
.field private mAppkeyTrackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTracker:Lcom/ut/mini/UTTracker;

.field private mTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Lcom/ut/mini/UTAnalytics;

    invoke-direct {v0}, Lcom/ut/mini/UTAnalytics;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAnalytics;->s_instance:Lcom/ut/mini/UTAnalytics;

    .line 88
    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    .line 90
    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method private checkInit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    if-nez v0, :cond_0

    .line 245
    const-string/jumbo v0, "Please call  () before call other method"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_0
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    return v0
.end method

.method private createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ut/mini/UTAnalytics$4;

    invoke-direct {v0, p0, p1}, Lcom/ut/mini/UTAnalytics$4;-><init>(Lcom/ut/mini/UTAnalytics;Ljava/util/Map;)V

    .line 567
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static getInstance()Lcom/ut/mini/UTAnalytics;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ut/mini/UTAnalytics;->s_instance:Lcom/ut/mini/UTAnalytics;

    return-object v0
.end method

.method private initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;
    .param p3, "app"    # Z

    .prologue
    .line 109
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[i_initialize] start..."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V

    .line 111
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTChannel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V

    .line 112
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isAliyunOsSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->setToAliyunOsPlatform()V

    .line 116
    :cond_0
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTCrashHandlerDisable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOff()V

    .line 125
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTLogEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->turnOnDebug()V

    .line 128
    :cond_2
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_4

    .line 131
    :cond_3
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 135
    :cond_4
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-nez v1, :cond_6

    .line 137
    new-instance v0, Lcom/ut/mini/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/UTMI1010_2001Event;-><init>()V

    .line 138
    .local v0, "l1010and2001EventInstance":Lcom/ut/mini/UTMI1010_2001Event;
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/UTMI1010_2001Event;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTMI1010_2001Event;->initTrafficStatistic(Landroid/app/Application;)V

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    .line 148
    invoke-static {p1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registeActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 149
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->getInstance()Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 150
    invoke-static {v0}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 151
    new-instance v1, Lcom/ut/mini/internal/RealtimeDebugSwitch;

    invoke-direct {v1}, Lcom/ut/mini/internal/RealtimeDebugSwitch;-><init>()V

    invoke-static {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 152
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ut/mini/exposure/TrackerManager;->init(Landroid/app/Application;)V

    .line 153
    invoke-static {}, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->getInstance()Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init(Landroid/app/Application;)V

    .line 156
    :cond_5
    invoke-static {}, Lalh;->a()Lalh;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalh;->a(Landroid/content/Context;)V

    .line 158
    .end local v0    # "l1010and2001EventInstance":Lcom/ut/mini/UTMI1010_2001Event;
    :cond_6
    return-void

    .line 119
    :cond_7
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOn(Landroid/content/Context;)V

    .line 120
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->setCrashCaughtListener(Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;)V

    goto :goto_0
.end method

.method private setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->b(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method private setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "aChannel"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/String;)V

    .line 301
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    new-instance v1, Lcom/ut/mini/UTAnalytics$1;

    invoke-direct {v1, p0, p1}, Lcom/ut/mini/UTAnalytics$1;-><init>(Lcom/ut/mini/UTAnalytics;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDisableWindvane(Z)V
    .locals 1
    .param p0, "bDisableWindvane"    # Z

    .prologue
    .line 94
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bWindvaneExtend:Z

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 9
    .param p1, "aRequestAuthenticationInstance"    # Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    const-string/jumbo v5, "UTAnalytics"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "[setRequestAuthentication] start..."

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-boolean v8, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "\u7b7e\u540d\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 266
    .local v1, "isEncode":Z
    instance-of v5, p1, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 267
    check-cast v4, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    .line 269
    .local v4, "temp":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAuthcode()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "secret":Ljava/lang/String;
    const/4 v2, 0x1

    .line 282
    .end local v4    # "temp":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    .local v2, "isSecurity":Z
    :goto_0
    invoke-static {}, Laju;->a()Laju;

    move-result-object v5

    .line 3034
    iput-object v0, v5, Laju;->c:Ljava/lang/String;

    .line 283
    invoke-static {v2, v1, v0, v3}, Lcom/alibaba/analytics/AnalyticsMgr;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 272
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "isSecurity":Z
    .end local v3    # "secret":Ljava/lang/String;
    :cond_1
    instance-of v5, p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 273
    check-cast v4, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    .line 274
    .local v4, "temp":Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    .line 276
    .restart local v3    # "secret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 277
    .restart local v2    # "isSecurity":Z
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v1

    .line 278
    goto :goto_0

    .line 279
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "isSecurity":Z
    .end local v3    # "secret":Ljava/lang/String;
    .end local v4    # "temp":Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "\u6b64\u7b7e\u540d\u65b9\u5f0f\u6682\u4e0d\u652f\u6301!\u8bf7\u4f7f\u7528 UTSecuritySDKRequestAuthentication \u6216 UTBaseRequestAuthentication \u8bbe\u7f6e\u7b7e\u540d!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private turnOffCrashHandler()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOff()V

    .line 317
    return-void
.end method

.method private turnOnDebug()V
    .locals 0

    .prologue
    .line 323
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->b()V

    .line 324
    return-void
.end method


# virtual methods
.method public dispatchLocalHits()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 507
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    new-instance v1, Lcom/ut/mini/UTAnalytics$2;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTAnalytics$2;-><init>(Lcom/ut/mini/UTAnalytics;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized getDefaultTracker()Lcom/ut/mini/UTTracker;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Laju;->a()Laju;

    move-result-object v0

    .line 5030
    iget-object v0, v0, Laju;->c:Ljava/lang/String;

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getDefaultTracker error,must call setRequestAuthentication method first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 417
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getOperationHistory(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aAmount"    # I
    .param p2, "aSeparator"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/module/UTOperationStack;->getOperationHistory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 3
    .param p1, "aTrackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    monitor-enter p0

    .line 5205
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 426
    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :goto_0
    monitor-exit p0

    return-object v1

    .line 430
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 431
    .local v0, "lTracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->setTrackId(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 433
    goto :goto_0

    .line 436
    .end local v0    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "TrackId is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTrackerByAppkey(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 3
    .param p1, "appkey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    monitor-enter p0

    .line 6205
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 444
    if-nez v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :goto_0
    monitor-exit p0

    return-object v1

    .line 448
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 449
    .local v0, "lTracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->setAppKey(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 451
    goto :goto_0

    .line 454
    .end local v0    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "appkey is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 327
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V

    .line 328
    return-void
.end method

.method public registerWindvane()V
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/ut/mini/UTAnalytics;->mInit:Z

    invoke-static {v0}, Lcom/ut/mini/extend/WindvaneExtend;->registerWindvane(Z)V

    .line 163
    return-void
.end method

.method public saveCacheDataToLocal()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 528
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    new-instance v1, Lcom/ut/mini/UTAnalytics$3;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTAnalytics$3;-><init>(Lcom/ut/mini/UTAnalytics;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public selfCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string/jumbo v1, "local not init"

    .line 553
    :goto_0
    return-object v1

    .line 545
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-nez v1, :cond_1

    .line 546
    const-string/jumbo v1, "not bind remote service\uff0cwaitting 10 second"

    goto :goto_0

    .line 549
    :cond_1
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p1}, Lajt;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 553
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sessionTimeout()V
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->b()V

    .line 396
    return-void
.end method

.method public setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z

    if-eqz v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 180
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-static {}, Laju;->a()Laju;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 1046
    iput-object v2, v1, Laju;->a:Landroid/content/Context;

    .line 184
    invoke-static {}, Lcom/ut/mini/extend/TLogExtend;->registerTLog()V

    .line 187
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Landroid/app/Application;)V

    .line 188
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/ut/mini/UTAnalytics;->initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V

    .line 190
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->registerWindvane()V

    .line 192
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    .line 193
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 200
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 195
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application and callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setAppApplicationInstance4sdk(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    invoke-static {}, Laju;->a()Laju;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 2046
    iput-object v2, v1, Laju;->a:Landroid/content/Context;

    .line 226
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Landroid/app/Application;)V

    .line 227
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/ut/mini/UTAnalytics;->initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V

    .line 228
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->registerWindvane()V

    .line 229
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 236
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 231
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application and callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setToAliyunOsPlatform()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    invoke-static {}, Laju;->a()Laju;

    move-result-object v0

    .line 7022
    const/4 v1, 0x1

    iput-boolean v1, v0, Laju;->d:Z

    .line 490
    return-void
.end method

.method protected transferLog(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string/jumbo v1, "_sls"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-eqz v1, :cond_1

    .line 468
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p1}, Lajt;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "UTAnalytics"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "iAnalytics"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :cond_2
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-direct {p0, p1}, Lcom/ut/mini/UTAnalytics;->createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public turnOffAutoPageTrack()V
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->turnOffAutoPageTrack()V

    .line 403
    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 0

    .prologue
    .line 485
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->a()V

    .line 486
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/util/Map;)V

    .line 482
    return-void
.end method

.method public unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 331
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V

    .line 332
    return-void
.end method

.method public updateSessionProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->b(Ljava/util/Map;)V

    .line 392
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "this interface is Deprecated\uff0cplease call UTAnalytics.getInstance().updateUserAccount(String aUsernick, String aUserid,String openid)"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;
    .param p3, "openid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 359
    invoke-static {p1, p2, p3}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 361
    if-nez v1, :cond_0

    .line 362
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "UT"

    const/16 v2, 0x3ef

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    .local v0, "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const-string/jumbo v1, "_priority"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 365
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 367
    .end local v0    # "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :cond_0
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 8
    .param p1, "aUsernick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 375
    .line 4205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 375
    if-nez v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    .line 377
    .local v7, "lTracker":Lcom/ut/mini/UTTracker;
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "UT"

    const/16 v2, 0x3ee

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 379
    .local v0, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 380
    return-void

    .line 381
    .end local v0    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v7    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Usernick can not be null or empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
