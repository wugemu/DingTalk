.class public Lcom/alibaba/android/rimet/RimetDDContext;
.super Lchy;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/RimetDDContext$a;
    }
.end annotation


# static fields
.field private static final MTOP_SDK_DAILY_KEY_INDEX:I = 0x6

.field private static final MTOP_SDK_ONLINE_KEY_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static TRAFFIC_KB:I

.field private static TRAFFIC_MB:I

.field public static sAttachBaseCostTime:J

.field public static sInitWukongCostTime:J

.field public static sOncreateStartTime:J


# instance fields
.field private localeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mApkValidCode:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackTime:J

.field private mConnectionListener:Lcom/alibaba/wukong/ConnectionListener;

.field private mGson:Lcom/google/gson/Gson;

.field private mIsAppFront:Z

.field private final mLWPNetEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mOfflineTaskReceiver:Landroid/content/BroadcastReceiver;

.field private mReconnected:Z

.field private mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartAppDebuggingReceiver:Lcom/alibaba/android/rimet/RimetDDContext$a;

.field private mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

.field private systemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 320
    const-class v0, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    .line 327
    const/high16 v0, 0x100000

    sput v0, Lcom/alibaba/android/rimet/RimetDDContext;->TRAFFIC_MB:I

    .line 328
    const/16 v0, 0x400

    sput v0, Lcom/alibaba/android/rimet/RimetDDContext;->TRAFFIC_KB:I

    .line 330
    sput-wide v2, Lcom/alibaba/android/rimet/RimetDDContext;->sOncreateStartTime:J

    .line 331
    sput-wide v2, Lcom/alibaba/android/rimet/RimetDDContext;->sAttachBaseCostTime:J

    .line 332
    sput-wide v2, Lcom/alibaba/android/rimet/RimetDDContext;->sInitWukongCostTime:J

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V
    .locals 3
    .param p1, "application"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 363
    invoke-direct {p0, p1}, Lchy;-><init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V

    .line 325
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mReconnected:Z

    .line 337
    iput-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mSmartAppDebuggingReceiver:Lcom/alibaba/android/rimet/RimetDDContext$a;

    .line 339
    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/RimetDDContext$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mConnectionListener:Lcom/alibaba/wukong/ConnectionListener;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mLWPNetEventListener:Ljava/util/List;

    .line 3396
    iput-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    .line 364
    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->setUseTlog(Z)V

    .line 365
    invoke-static {v1}, Lanet/channel/util/ALog;->setUseTlog(Z)V

    .line 366
    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->b(Z)V

    .line 367
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext;->installTestPatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/android/rimet/RimetDDContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mIsAppFront:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/alibaba/android/rimet/RimetDDContext;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mBackTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->requestHotpatch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mApkValidCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mApkValidCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/android/rimet/RimetDDContext;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/rimet/RimetDDContext;->showNumberMenu(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mLWPNetEventListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 319
    sget v0, Lcom/alibaba/android/rimet/RimetDDContext;->TRAFFIC_MB:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 319
    sget v0, Lcom/alibaba/android/rimet/RimetDDContext;->TRAFFIC_KB:I

    return v0
.end method

.method static synthetic access$700(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext;->getMediaType(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/android/rimet/RimetDDContext;Lcdd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;
    .param p1, "x1"    # Lcdd;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext;->getCookieValues(Lcdd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->checkForProxy()V

    return-void
.end method

.method private checkWebviewDebuggingMode()V
    .locals 0

    .prologue
    .line 4284
    return-void
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3387
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3388
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-class v1, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 3389
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 3390
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3391
    return-object v0
.end method

.method private ctrlClickedAdvertisingId(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 4324
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$54;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$54;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4334
    return-void
.end method

.method private disableACCS()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3380
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/AccsConfig;->a()V

    .line 3381
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 20090
    if-eqz v0, :cond_0

    .line 20091
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lki;->a:[Ljava/lang/String;

    .line 3382
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->forceDisableService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3384
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 10

    .prologue
    .line 3022
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 3023
    .local v5, "mContext":Landroid/content/Context;
    const-string/jumbo v0, "96C5FA0B2E3CC89E6A68F6DE63F9ACF2"

    .line 3025
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3026
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 3027
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 3028
    .local v3, "data":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string/jumbo v7, "wk.appKey"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3029
    const-string/jumbo v7, "wk.appKey"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3030
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3031
    new-instance v2, Landroid/content/ComponentName;

    const-class v7, Lcom/laiwang/protocol/android/LWPService;

    invoke-direct {v2, v5, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3032
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 3033
    .local v6, "oldData":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 3034
    const-string/jumbo v7, "appKey"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3037
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v6    # "oldData":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_1

    .line 3038
    const-string/jumbo v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3046
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v0

    .line 3041
    :catch_0
    move-exception v4

    .line 3042
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3043
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 3044
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCookieValues(Lcdd;)Ljava/lang/String;
    .locals 5
    .param p1, "cookieModel"    # Lcdd;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2477
    iget-object v2, p1, Lcdd;->a:Ljava/util/Map;

    .line 2479
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 2480
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2481
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2482
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2484
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2486
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v3, "domain="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2487
    iget-object v3, p1, Lcdd;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2488
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2489
    const-string/jumbo v3, "path="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2490
    iget-object v3, p1, Lcdd;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2491
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2492
    const-string/jumbo v3, "expires="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2493
    iget-object v3, p1, Lcdd;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2494
    iget-object v3, p1, Lcdd;->e:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2495
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2496
    const-string/jumbo v3, "secure"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2498
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDingTalkLanguage()Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 2967
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 2968
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 2969
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 2971
    .local v2, "country":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2972
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_2

    .line 2976
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2977
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 2978
    .local v4, "list":Landroid/os/LocaleList;
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2979
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    .line 2980
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2981
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 2983
    :cond_1
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2984
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2992
    .end local v4    # "list":Landroid/os/LocaleList;
    :cond_2
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "pref_locale"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2993
    .local v5, "localStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2994
    const-string/jumbo v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2995
    .local v1, "arr":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 2996
    aget-object v3, v1, v10

    .line 2997
    const/4 v7, 0x1

    aget-object v2, v1, v7

    .line 3000
    .end local v1    # "arr":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3001
    .local v0, "acceptLanguageBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3002
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3003
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3004
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v0    # "acceptLanguageBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v5    # "localStr":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private getLocaleFromPref(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 8
    .param p1, "defaultLocale"    # Ljava/util/Locale;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3398
    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    if-nez v5, :cond_0

    .line 3399
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    .line 3401
    :cond_0
    move-object v4, p1

    .line 3402
    .local v4, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "pref_locale"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3404
    .local v3, "localStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3405
    const-string/jumbo v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3406
    .local v0, "arr":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3407
    const/4 v5, 0x0

    aget-object v2, v0, v5

    .line 3408
    .local v2, "language":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v0, v5

    .line 3409
    .local v1, "country":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    .end local v4    # "locale":Ljava/util/Locale;
    invoke-direct {v4, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .restart local v4    # "locale":Ljava/util/Locale;
    :cond_1
    :goto_0
    return-object v4

    .line 3412
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    if-eqz v5, :cond_3

    .line 3413
    iget-object v4, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    .line 3416
    :cond_3
    const-string/jumbo v5, "zh"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "ja"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "vi"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3417
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getMediaType(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2145
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

    .line 2146
    .local v0, "mediaType":Lcom/laiwang/protocol/media/MediaType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2147
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2148
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    .line 2162
    :cond_0
    :goto_0
    return-object v0

    .line 2149
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2150
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 2151
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2152
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 2153
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2154
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 2155
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2156
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 2157
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2158
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 3822
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initAppContext()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 5047
    iput-object p0, v0, Lcid;->d:Lchy;

    .line 5048
    invoke-virtual {p0}, Lchy;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lckc;->a(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method private initCustomTheme()V
    .locals 4

    .prologue
    .line 4213
    invoke-static {}, Leim;->a()Leim;

    move-result-object v0

    .line 22053
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    new-instance v2, Leim$1;

    invoke-direct {v2, v0}, Leim$1;-><init>(Leim;)V

    invoke-virtual {v1, v2}, Lcmq;->a(Lcmq$a;)V

    .line 22082
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;-><init>(Leim;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "contact_theme_apply"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4214
    return-void
.end method

.method private initMotu()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2727
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    .line 2728
    .local v8, "uid":J
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2729
    .local v2, "ttid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v4

    .line 2730
    .local v4, "appKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->b()Ljava/lang/String;

    move-result-object v5

    .line 2731
    .local v5, "appSecret":Ljava/lang/String;
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2732
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2735
    .local v1, "usernick":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 2736
    .local v6, "enableMotuWatch":Z
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2738
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v10, "f_open_motu_watch"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lchx;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 2743
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/doraemon/statistics/Statistics;->initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2744
    return-void

    .line 2732
    .end local v1    # "usernick":Ljava/lang/String;
    .end local v6    # "enableMotuWatch":Z
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 2739
    .restart local v1    # "usernick":Ljava/lang/String;
    .restart local v6    # "enableMotuWatch":Z
    :catch_0
    move-exception v7

    .line 2740
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "general"

    sget-object v10, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "initMotu fail, error="

    aput-object v12, v11, v13

    const/4 v12, 0x1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initPhotoFeature()V
    .locals 2

    .prologue
    .line 4217
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$53;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$53;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v0, v1}, Lgzo;->a(Lgzl;)V

    .line 4253
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    new-instance v1, Leks;

    invoke-direct {v1}, Leks;-><init>()V

    invoke-virtual {v0, v1}, Lgzo;->a(Lgrl;)V

    .line 4254
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    new-instance v1, Lekt;

    invoke-direct {v1}, Lekt;-><init>()V

    invoke-virtual {v0, v1}, Lgzo;->a(Lgrm;)V

    .line 4255
    return-void
.end method

.method private initSearchEngine()V
    .locals 1

    .prologue
    .line 2720
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->d()V

    .line 2721
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2722
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c()V

    .line 2724
    :cond_0
    return-void
.end method

.method private initSecurityGuardManager()V
    .locals 6

    .prologue
    .line 2201
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    .line 2202
    .local v0, "init":Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    .line 2203
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2204
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/alibaba/android/rimet/RimetDDContext$16;

    invoke-direct {v5, p0}, Lcom/alibaba/android/rimet/RimetDDContext$16;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    .line 2212
    :cond_0
    return-void
.end method

.method private initThreadTimeHealthWarn()V
    .locals 2

    .prologue
    .line 2096
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 2097
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$14;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/health/Health;->addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V

    .line 2141
    return-void
.end method

.method private initWuKongEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2747
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2748
    invoke-static {v3}, Lcom/alibaba/bee/DBManager;->enableDebuggable(Z)V

    .line 2749
    invoke-static {v3}, Lcom/alibaba/laiwang/alive/AliveManager;->setDebuggable(Z)V

    .line 2752
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mConnectionListener:Lcom/alibaba/wukong/ConnectionListener;

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->registerConnectionListener(Lcom/alibaba/wukong/ConnectionListener;)V

    .line 2754
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$28;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$28;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->setUserAgentFetcher(Lcom/alibaba/doraemon/UserAgentFetcher;)V

    .line 2760
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->m()Lcom/alibaba/wukong/im/EncryptHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2761
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->m()Lcom/alibaba/wukong/im/EncryptHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setMessageEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V

    .line 2763
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->B()Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2764
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->B()Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setConversationDisplayProxy(Lcom/alibaba/wukong/im/ConversationDisplayProxy;)V

    .line 2766
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->E()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setConversationComparator(Ljava/util/Comparator;)V

    .line 2767
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->u()Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setLuckyTimePlanMsgListener(Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;)V

    .line 2768
    new-instance v1, Lels;

    invoke-direct {v1}, Lels;-><init>()V

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setAuthProvider(Lcom/alibaba/wukong/im/AuthProvider;)V

    .line 2769
    new-instance v1, Lelw;

    invoke-direct {v1}, Lelw;-><init>()V

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setSwitchProvider(Lcom/alibaba/wukong/im/SwitchProvider;)V

    .line 2770
    new-instance v1, Lelt;

    invoke-direct {v1}, Lelt;-><init>()V

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setConversationTitleProvider(Lcom/alibaba/wukong/im/ConversationTitleProvider;)V

    .line 2771
    invoke-static {}, Lcls;->a()V

    .line 2773
    invoke-static {}, Lelm;->b()Lelm;

    invoke-static {}, Lelm;->a()V

    .line 2777
    :try_start_0
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 2778
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$29;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$29;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2794
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private installTestPatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4210
    :goto_0
    return-void

    .line 4162
    :cond_0
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 4163
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 4164
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 4165
    sget-object v1, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 4166
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$52;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$52;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 4209
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method

.method private isACCSEnabled()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3363
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcof;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->isFromChina()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3375
    :cond_0
    :goto_0
    return v0

    .line 3367
    :cond_1
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isHuaweiRom()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3371
    invoke-static {}, Lcof;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_vivo_accs_enable"

    invoke-static {v2, v3, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 3375
    goto :goto_0
.end method

.method private overwriteConfigurationLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "locale"    # Ljava/util/Locale;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3828
    if-nez p1, :cond_0

    .line 3829
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3833
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 3866
    :cond_1
    :goto_0
    return-void

    .line 3838
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_3

    .line 3839
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3840
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3846
    :cond_3
    iput-object p2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3847
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3848
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3850
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3851
    .local v1, "localeStr":Ljava/lang/String;
    invoke-static {v1}, Lcnc;->a(Ljava/lang/String;)V

    .line 3855
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3856
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->handleLanguageChanged()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3858
    :catch_0
    move-exception v2

    .line 3860
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "lightapp_handle_languageChanged fail"

    .line 3861
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 3862
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3863
    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private requestHotpatch()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4155
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    const-string/jumbo v1, "rimet"

    invoke-virtual {v0, v1}, Ljoz;->a(Ljava/lang/String;)V

    .line 4156
    return-void
.end method

.method private requestPrepareAsLogin()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3144
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 3145
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    const-string/jumbo v1, "lwp"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->clearProtocolRequest(Ljava/lang/String;)V

    .line 3146
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$35;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$35;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 3183
    return-void
.end method

.method private requestPrepareAsLogout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3187
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 3188
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    const-string/jumbo v1, "lwp"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->clearProtocolRequest(Ljava/lang/String;)V

    .line 3189
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$36;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$36;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 3206
    return-void
.end method

.method private sendLoginBroadcast()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3814
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    .line 3815
    .local v1, "userEngine":Lccr;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.user.login"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3817
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "user_id_string"

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lccr;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3818
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 3819
    return-void
.end method

.method private sendLogoutBroadcast()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3108
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    .line 3109
    .local v1, "userEngine":Lccr;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.user.logout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3111
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "user_id_string"

    .line 3112
    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    .line 3111
    invoke-static {v4, v5}, Lccr;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3113
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 3114
    return-void
.end method

.method private shouldUpdateCookie()Z
    .locals 1

    .prologue
    .line 2473
    const/4 v0, 0x1

    return v0
.end method

.method private showNumberMenu(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "bizNumInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 1705
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1706
    .local v4, "telNumber":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v7, "menuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1708
    const v0, 0x7f091aa4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_0
    const v0, 0x7f091769

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    const v0, 0x7f09024c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1712
    const v0, 0x7f090281

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1713
    const v0, 0x7f091767

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    const v0, 0x7f0906f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 1716
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1717
    .local v6, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const v0, 0x7f091768

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1718
    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$4;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/rimet/RimetDDContext$4;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;[Ljava/lang/CharSequence;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v6, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1748
    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1749
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1750
    return-void
.end method


# virtual methods
.method public attachOnCreate()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/alibaba/android/rimet/RimetDDContext;->sOncreateStartTime:J

    .line 3871
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initAppContext()V

    .line 3873
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 3876
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_0

    .line 3877
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 3880
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3881
    .local v2, "ttid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v4

    .line 3882
    .local v4, "appKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->b()Ljava/lang/String;

    move-result-object v5

    .line 3884
    .local v5, "appSecret":Ljava/lang/String;
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3891
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const/4 v8, 0x0

    .line 3893
    .local v8, "isGray":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f092253

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    const/4 v8, 0x1

    .line 3896
    :goto_0
    if-eqz v8, :cond_3

    .line 3897
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->initTBS(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3899
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .line 3905
    :goto_1
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/health/Health;

    .line 3906
    .local v7, "health":Lcom/alibaba/doraemon/health/Health;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/alibaba/doraemon/health/Health;->init(Landroid/app/Application;)V

    .line 3936
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f092253

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3938
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->setRunningMode(I)V

    .line 3939
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "com.alibaba.android.rimet.biz.SplashActivity"

    aput-object v3, v6, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "com.alibaba.android.rimet.biz.home.activity.HomeActivity"

    aput-object v3, v6, v1

    .line 3944
    .local v6, "bootActivityArray":[Ljava/lang/String;
    const/4 v1, 0x0

    sget-wide v10, Lcom/alibaba/android/rimet/RimetDDContext;->sOncreateStartTime:J

    invoke-interface {v7, v1, v6, v10, v11}, Lcom/alibaba/doraemon/health/Health;->setBarrierPolicy(Lcom/alibaba/doraemon/health/BarrierPolicy;[Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3951
    .end local v6    # "bootActivityArray":[Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/laiwang/alive/AliveManager;->setAccsAppReceiver(Landroid/content/Context;)V

    .line 3952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/alibaba/android/rimet/RimetDDContext;->sOncreateStartTime:J

    sub-long/2addr v10, v12

    sput-wide v10, Lcom/alibaba/android/rimet/RimetDDContext;->sAttachBaseCostTime:J

    .line 3955
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/bee/DBManager;->init(Landroid/content/Context;)V

    .line 3956
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/bee/DBManager;->setCryptEnabled(Z)V

    .line 3957
    invoke-static {}, Lema;->b()V

    .line 3958
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$48;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$48;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->setCustomInterface(Lcom/alibaba/wukong/WKManager$CustomInterface;)V

    .line 3965
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3977
    :goto_3
    return-void

    .line 3893
    .end local v7    # "health":Lcom/alibaba/doraemon/health/Health;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3901
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->initTBS(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3946
    .restart local v7    # "health":Lcom/alibaba/doraemon/health/Health;
    :catch_0
    move-exception v9

    .line 3947
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3969
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initServerInfo()V

    .line 3971
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->b()V

    .line 3972
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->l()V

    .line 3973
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->launch(Landroid/content/Context;)V

    .line 3976
    invoke-static {}, Lema;->a()V

    goto :goto_3

    .end local v7    # "health":Lcom/alibaba/doraemon/health/Health;
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public clearLocalCache()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3122
    invoke-static {}, Lcls;->b()V

    .line 3124
    invoke-static {}, Lccr;->a()Lccr;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccr;->a(J)V

    .line 3125
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(J)V

    .line 3126
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->b()V

    .line 3127
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b()V

    .line 3128
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->h()V

    .line 3129
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onLogout()V

    .line 3131
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->requestPrepareAsLogout()V

    .line 3133
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    .line 18139
    :try_start_0
    iget-object v1, v0, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 18140
    iget-object v1, v0, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 18142
    :cond_0
    iget-object v1, v0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    .line 18143
    iget-object v1, v0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 18145
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lekg;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3134
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v0

    .line 19149
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 3135
    invoke-static {}, Lcms;->m()V

    .line 3137
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    .line 19299
    iget-object v1, v0, Lcmt;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 19300
    :try_start_1
    iget-object v2, v0, Lcmt;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 19301
    iget-object v0, v0, Lcmt;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 19302
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3139
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onLogout()V

    .line 3140
    return-void

    .line 18146
    :catch_0
    move-exception v0

    .line 18147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 19302
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public closeSearchEngine()V
    .locals 1

    .prologue
    .line 2939
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->e()V

    .line 2940
    return-void
.end method

.method public functionTable()V
    .locals 1

    .prologue
    .line 3456
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->k()V

    .line 3457
    return-void
.end method

.method public genAudioManager()Landroid/media/AudioManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3298
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mAudioManager:Landroid/media/AudioManager;

    .line 3300
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3255
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 3286
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 3287
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3288
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3289
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3290
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mGson:Lcom/google/gson/Gson;

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3463
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getLocaleFromPref(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 3465
    .local v1, "locale":Ljava/util/Locale;
    return-object v1
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 3425
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2956
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2957
    .local v0, "appVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2958
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "none"

    .line 2959
    .local v1, "buildId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2960
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f092692

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2962
    :cond_0
    const-string/jumbo v3, "AliApp(DingTalk/%s) %s/%s Channel/%s language/%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    .line 2963
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getDingTalkLanguage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2962
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getWKUserAgent()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3009
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3010
    .local v0, "ua":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3011
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 3013
    :cond_0
    return-object v0
.end method

.method public initAsyncTasks()V
    .locals 2

    .prologue
    .line 4032
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$50;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$50;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4066
    return-void
.end method

.method public initCloudSettingMemCache()V
    .locals 3

    .prologue
    .line 2830
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    .line 16090
    iget-boolean v0, v1, Lcmt;->c:Z

    if-nez v0, :cond_0

    .line 16093
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-instance v2, Lcmt$1;

    invoke-direct {v2, v1}, Lcmt$1;-><init>(Lcmt;)V

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    .line 16112
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcmt;->c:Z

    .line 2831
    :cond_0
    return-void
.end method

.method public initConference()V
    .locals 2

    .prologue
    .line 2834
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$30;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$30;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    .line 2861
    return-void
.end method

.method public initContactListener()V
    .locals 1

    .prologue
    .line 2926
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h()V

    .line 2927
    return-void
.end method

.method public initDagger()V
    .locals 5

    .prologue
    .line 2802
    :try_start_0
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->a()Lcom/alibaba/aether/api/Aether;

    .line 2803
    invoke-static {}, Loi;->a()Loi;

    .line 15052
    new-instance v2, Lol;

    const-string/jumbo v3, "biz/microapp"

    invoke-direct {v2, v3}, Lol;-><init>(Ljava/lang/String;)V

    .line 15053
    new-instance v2, Loj;

    const-string/jumbo v3, "biz/common"

    invoke-direct {v2, v3}, Loj;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2809
    return-void

    .line 2804
    :catch_0
    move-exception v0

    .line 2805
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2806
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2807
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 2808
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RimetDDContext initDagger failed! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initDingtalkMiddle()V
    .locals 3

    .prologue
    .line 522
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    const-class v1, Lgvm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$34;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$34;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v0, v1, v2}, Lcid;->a(Ljava/lang/String;Lckb;)V

    .line 574
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$45;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v0, v1, v2}, Lcid;->a(Ljava/lang/String;Lckb;)V

    .line 1535
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$55;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$55;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 7052
    iput-object v1, v0, Lcid;->c:Lcmy;

    .line 1542
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$56;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$56;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 7064
    iput-object v1, v0, Lcid;->a:Lcqo;

    .line 1598
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$57;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$57;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 7068
    iput-object v1, v0, Lcid;->b:Lckd;

    .line 1664
    invoke-static {}, Ljpd;->a()Ljpd;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$58;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$58;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 8026
    iput-object v1, v0, Ljpd;->a:Ljpf;

    .line 1671
    invoke-static {}, Lcae;->a()Lcae;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$2;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 8029
    iput-object v1, v0, Lcae;->a:Lcag;

    .line 1694
    invoke-static {}, Lidi;->a()Lidi;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$3;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 9026
    iput-object v1, v0, Lidi;->a:Lidh;

    .line 1701
    return-void
.end method

.method public initDoraemon()V
    .locals 7

    .prologue
    .line 1792
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initSecurityGuardManager()V

    .line 1793
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 10039
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 10040
    const-string/jumbo v4, "SENDER"

    new-instance v6, Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;

    invoke-direct {v6, v5}, Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v6}, Lcom/alibaba/doraemon/Doraemon;->registerArtifactFetcher(Ljava/lang/String;Lcom/alibaba/doraemon/ArtifactFetcher;)V

    .line 10041
    const-string/jumbo v4, "SHOWER"

    new-instance v6, Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;

    invoke-direct {v6, v5}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v6}, Lcom/alibaba/doraemon/Doraemon;->registerArtifactFetcher(Ljava/lang/String;Lcom/alibaba/doraemon/ArtifactFetcher;)V

    .line 10072
    const-string/jumbo v4, "activity"

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 10073
    if-eqz v4, :cond_1

    .line 10074
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    .line 10042
    :goto_0
    sput v4, Lgzp;->a:I

    .line 10043
    invoke-static {v5}, Lgzr;->a(Landroid/content/Context;)V

    .line 1794
    new-instance v4, Lcom/alibaba/android/rimet/RimetDDContext$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/RimetDDContext$7;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v4}, Lcom/alibaba/doraemon/DoraemonLog;->setOutLogger(Lcom/alibaba/doraemon/DoraemonLog$OutLogger;)V

    .line 1808
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkim/base/IMInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1810
    const-string/jumbo v4, "HEALTH"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/health/Health;

    .line 1813
    .local v1, "health":Lcom/alibaba/doraemon/health/Health;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1814
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v4, Lcom/alibaba/android/rimet/RimetDDContext$8;

    invoke-direct {v4, p0, v3}, Lcom/alibaba/android/rimet/RimetDDContext$8;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/res/Resources;)V

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/health/Health;->addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V

    .line 1899
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1900
    new-instance v4, Lcom/alibaba/android/rimet/RimetDDContext$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/RimetDDContext$9;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/health/Health;->addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V

    .line 1925
    :cond_0
    const-string/jumbo v4, "LWP"

    new-instance v5, Lcom/alibaba/android/rimet/RimetDDContext$10;

    invoke-direct {v5, p0}, Lcom/alibaba/android/rimet/RimetDDContext$10;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v4, v5}, Lcom/alibaba/doraemon/health/Health;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 1941
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    new-instance v5, Leke;

    invoke-direct {v5}, Leke;-><init>()V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setDecoder(Lcom/alibaba/doraemon/image/ImageDecoder;)V

    .line 1944
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;

    .line 1950
    const-string/jumbo v4, "REQUEST"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/request/Request;

    .line 1951
    .local v2, "request":Lcom/alibaba/doraemon/request/Request;
    new-instance v4, Lcom/alibaba/android/rimet/RimetDDContext$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/RimetDDContext$11;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/request/Request;->registerStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V

    .line 2056
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    new-instance v5, Lcom/alibaba/android/rimet/RimetDDContext$13;

    invoke-direct {v5, p0}, Lcom/alibaba/android/rimet/RimetDDContext$13;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 2082
    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/laiwang/alive/AliveManager;->init(Landroid/content/Context;)V

    .line 2083
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/laiwang/alive/AliveManager;->setTTid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    :goto_1
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/amap/api/services/core/ServiceSettings;->setProtocol(I)V

    .line 2090
    return-void

    .line 10076
    .end local v1    # "health":Lcom/alibaba/doraemon/health/Health;
    .end local v2    # "request":Lcom/alibaba/doraemon/request/Request;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2084
    .restart local v1    # "health":Lcom/alibaba/doraemon/health/Health;
    .restart local v2    # "request":Lcom/alibaba/doraemon/request/Request;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2085
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public initDynimaicSo()V
    .locals 9

    .prologue
    .line 475
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "tpffmpeg"

    const-string/jumbo v3, "35bdaad1a76b9617f95947332cfb3bdf3f5e58d22b158c76e51ce8d0ffaa54ba"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/tpffmpeg/armeabi/35bdaad1a76b9617f95947332cfb3bdf3f5e58d22b158c76e51ce8d0ffaa54ba.so"

    const-wide/32 v6, 0x16b840

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 480
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "MediaEncode"

    const-string/jumbo v3, "4f18390a2247881989ebe03aa993a61addb677ca850231c0dddc1e8dbac49daf"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/MediaEncode/armeabi/4f18390a2247881989ebe03aa993a61addb677ca850231c0dddc1e8dbac49daf.so"

    const-wide/32 v6, 0x120f89

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 485
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "pwp_client"

    const-string/jumbo v3, "df0da4bf9118ff345fbf390b70a20b262b2d7445a7b8495d3dd3ea0565af030a"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/pwp_client/armeabi/df0da4bf9118ff345fbf390b70a20b262b2d7445a7b8495d3dd3ea0565af030a.so"

    const-wide/32 v6, 0x1bb303

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 490
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "tbffmpeg"

    const-string/jumbo v3, "42b14317c2acce01e1c6ae1a7e0195bbb245e2c43f1ea468ca4e01f20705534c"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/tbffmpeg/armeabi/42b14317c2acce01e1c6ae1a7e0195bbb245e2c43f1ea468ca4e01f20705534c.so"

    const-wide/32 v6, 0x21ea38

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 495
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "TaoLive"

    const-string/jumbo v3, "a84cbe6ee9841d789fa5502368b83d56ceb4a1ca81938accb47c57e998d05d33"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/TaoLive/armeabi/a84cbe6ee9841d789fa5502368b83d56ceb4a1ca81938accb47c57e998d05d33.so"

    const-wide/32 v6, 0xce05a

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 500
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "artc_engine"

    const-string/jumbo v3, "8b9d4fb8b74de7d65bf7ed6b7721d935fda54ec5c354ba0f7e7eda47440f22c4"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/artc_engine/armeabi/8b9d4fb8b74de7d65bf7ed6b7721d935fda54ec5c354ba0f7e7eda47440f22c4.so"

    const-wide/32 v6, 0x2ae807

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 505
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v1, Lcjl;

    const-string/jumbo v2, "doclens"

    const-string/jumbo v3, "b3b360beb09e3ff87c14b9820659970f953e548a909aefb0d36b878197861e7b"

    const-string/jumbo v4, "armeabi"

    const-string/jumbo v5, "https://file.dingtalk.com/dso/dt/libdoclens/armeabi/b3b360beb09e3ff87c14b9820659970f953e548a909aefb0d36b878197861e7b.so"

    const-wide/32 v6, 0x2613a9

    invoke-direct/range {v1 .. v7}, Lcjl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8, v1}, Lcjn;->a(Landroid/content/Context;Lcjl;)V

    .line 511
    return-void
.end method

.method public initEncrypt()V
    .locals 3

    .prologue
    .line 2503
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    :goto_0
    return-void

    .line 2504
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2506
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2507
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public initFastConfigListener()V
    .locals 1

    .prologue
    .line 2864
    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$31;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/RimetDDContext$31;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 2872
    return-void
.end method

.method public initHotpatch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4071
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4152
    :goto_0
    return-void

    .line 4075
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v0, v1, :cond_1

    .line 4076
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljoz;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljoz;

    .line 4081
    :goto_1
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$51;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$51;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 21471
    iput-object v1, v0, Ljoz;->d:Ljmn;

    .line 4151
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    invoke-virtual {v0}, Ljoz;->b()V

    goto :goto_0

    .line 4079
    :cond_1
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "2.10.0.20"

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljoz;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljoz;

    goto :goto_1
.end method

.method public initInvitationManager()V
    .locals 7

    .prologue
    .line 3506
    invoke-static {}, Lelg;->a()Lelg;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 20120
    if-eqz v0, :cond_1

    .line 20124
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lelg;->b:Ljava/lang/String;

    .line 20126
    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, v1, Lelg;->a:Landroid/content/ClipboardManager;

    .line 20127
    iget-object v0, v1, Lelg;->a:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 20129
    :try_start_0
    iget-object v0, v1, Lelg;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20136
    :cond_0
    :goto_0
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 20137
    new-instance v2, Lelg$2;

    invoke-direct {v2, v1}, Lelg$2;-><init>(Lelg;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 20169
    const-string/jumbo v0, "InvitationListener"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lelg$3;

    invoke-direct {v2, v1}, Lelg$3;-><init>(Lelg;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3507
    :cond_1
    return-void

    .line 20130
    :catch_0
    move-exception v0

    .line 20131
    const-string/jumbo v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "addPrimaryClipChangedListener error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 20132
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20131
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initLightapp()V
    .locals 1

    .prologue
    .line 2797
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->initBiz()V

    .line 2798
    return-void
.end method

.method public initLog()V
    .locals 1

    .prologue
    .line 2826
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/protocol/Config;->FILE_LOG_PRINT_TRACE:Z

    .line 2827
    return-void
.end method

.method public initMailAndSpaceContent()V
    .locals 4

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2194
    :goto_0
    return-void

    .line 2173
    :cond_0
    const-wide/16 v0, 0xce4

    .line 2174
    .local v0, "delayTime":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 2176
    const-wide/16 v0, 0x19c8

    .line 2178
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/RimetDDContext$15;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v2, v3, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public initMtopSdk()V
    .locals 3

    .prologue
    .line 4259
    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lmtopsdk/mtop/intf/MtopSetting;->setAppKeyIndex(II)V

    .line 4260
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lele;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/mtop/intf/MtopSetting;->setAppVersion(Ljava/lang/String;)V

    .line 4261
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    .line 4262
    .local v0, "instance":Lmtopsdk/mtop/intf/Mtop;
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 4263
    return-void
.end method

.method public initNavigator()V
    .locals 4

    .prologue
    .line 1755
    :try_start_0
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$5;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v1}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    :goto_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 1775
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$6;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->setLoginProcesser(Lcom/alibaba/doraemon/navigator/Authenticator;)V

    .line 1788
    invoke-static {}, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a()Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 9036
    iput-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a:Landroid/content/Context;

    .line 9037
    new-instance v2, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    invoke-direct {v2, v1}, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;-><init>(Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;)V

    iput-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    .line 9038
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    .line 9039
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9040
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9041
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9042
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 9043
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->b:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1789
    return-void

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public initOACookie()V
    .locals 2

    .prologue
    .line 2431
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->shouldUpdateCookie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$19;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcma;)V

    .line 2469
    :cond_0
    return-void
.end method

.method public initOfflineTaskReceiver()V
    .locals 3

    .prologue
    .line 2876
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$32;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$32;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    iput-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mOfflineTaskReceiver:Landroid/content/BroadcastReceiver;

    .line 2915
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_offline_task"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2916
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mOfflineTaskReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2917
    return-void
.end method

.method public initPhoneStatus()V
    .locals 5

    .prologue
    .line 2814
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    .line 15126
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 15127
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->d:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 15130
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    if-nez v1, :cond_0

    .line 15132
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    .line 15133
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15136
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    const-string/jumbo v3, "CALL_STATE_RINGING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15137
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    const-string/jumbo v3, "CALL_STATE_IDLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15141
    :try_start_1
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->b:Landroid/content/BroadcastReceiver;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->c:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2819
    :cond_0
    :goto_0
    return-void

    .line 2815
    :catch_0
    move-exception v0

    .line 2817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public initQuotaInvalid()V
    .locals 4

    .prologue
    .line 2920
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2921
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->i()V

    .line 2923
    :cond_0
    return-void
.end method

.method public initReceiver()V
    .locals 2

    .prologue
    .line 2249
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->registerAccountReceiver()V

    .line 2250
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->registerConnectivityReceiver()V

    .line 2251
    invoke-static {}, Loi;->a()Loi;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$17;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 11069
    iget-object v0, v0, Loi;->a:Lcjp;

    invoke-virtual {v0, v1}, Lcjp;->a(Lcjo$a;)V

    .line 2374
    invoke-static {}, Lok;->a()Lok;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$18;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 12048
    iget-object v0, v0, Lok;->a:Lcjp;

    invoke-virtual {v0, v1}, Lcjp;->a(Lcjo$a;)V

    .line 2427
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->registerLocaleChangeReceiver()V

    .line 2428
    return-void
.end method

.method public initServerInfo()V
    .locals 2

    .prologue
    .line 518
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/content/Context;)V

    .line 519
    return-void
.end method

.method public initSystemManager()V
    .locals 8

    .prologue
    .line 3471
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 3474
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 3479
    :goto_1
    :try_start_2
    const-string/jumbo v4, "android.sec.clipboard.ClipboardUIManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3480
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3481
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3482
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3488
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 3494
    :goto_3
    :try_start_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 3495
    const-string/jumbo v4, "android.media.session.MediaSessionLegacyHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3496
    .restart local v0    # "cls":Ljava/lang/Class;
    const-string/jumbo v4, "getHelper"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3497
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3498
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 3503
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_4
    return-void

    .line 3483
    :catch_0
    move-exception v1

    .line 3484
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3500
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3501
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public initUserTrack()V
    .locals 7

    .prologue
    .line 2234
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2235
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcpy;->d()V

    .line 2236
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 2237
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->e()V

    .line 2238
    const-string/jumbo v3, "HEALTH"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 2239
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    invoke-interface {v0}, Lcom/alibaba/doraemon/health/Health;->startHealthStatistics()V

    .line 2240
    invoke-static {}, Lcms;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2241
    const-string/jumbo v3, "dd"

    const-string/jumbo v4, "t_bluetooth"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    :goto_0
    new-instance v3, Lell;

    invoke-direct {v3}, Lell;-><init>()V

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;->registerHooker(Lcom/alibaba/doraemon/navigator/NavigatorHook;)V

    .line 2246
    return-void

    .line 2243
    :cond_0
    const-string/jumbo v3, "dd"

    const-string/jumbo v4, "t_bluetooth"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initWukongIM()V
    .locals 14

    .prologue
    .line 2512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2515
    .local v10, "time":J
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initWuKongEngine()V

    .line 2518
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/health/Health;

    .line 2519
    .local v7, "health":Lcom/alibaba/doraemon/health/Health;
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$20;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v7, v1}, Lcom/alibaba/doraemon/health/Health;->setHealthSettings(Lcom/alibaba/doraemon/health/HealthSettings;)V

    .line 2544
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v12

    .line 2545
    .local v12, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v1, v12, v2

    if-lez v1, :cond_0

    .line 2546
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    invoke-virtual {v1}, Lekg;->a()V

    .line 2547
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/alibaba/wukong/auth/AuthService;->autoLogin(J)V

    .line 2549
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcls;->a(Ljava/lang/String;)V

    .line 2551
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g()V

    .line 2552
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j()V

    .line 2556
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initMotu()V

    .line 2561
    new-instance v6, Leie;

    invoke-direct {v6}, Leie;-><init>()V

    .line 2562
    .local v6, "crashMonitorFetcher":Leie;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v6, v1}, Leie;->init(Landroid/content/Context;)V

    .line 2563
    const-string/jumbo v1, "CRASHMONITOR"

    invoke-static {v1, v6}, Lcom/alibaba/doraemon/Doraemon;->registerArtifactFetcher(Ljava/lang/String;Lcom/alibaba/doraemon/ArtifactFetcher;)V

    .line 2566
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    .line 12183
    :try_start_0
    iget-object v2, v1, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    .line 12184
    iget-object v1, v1, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    const/4 v2, 0x1

    .line 13175
    iput-boolean v2, v1, Lekg;->c:Z

    .line 2569
    const-class v1, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageService;

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$21;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageService;->setMessageProxy(Lcom/alibaba/wukong/im/MessageProxy;)V

    .line 2577
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$22;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$22;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/GroupNickService;->setConvertPinyinManager(Libd$a;)V

    .line 2585
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v1

    .line 14124
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b:Lcom/alibaba/wukong/im/StatusNotifyListener;

    if-nez v2, :cond_2

    .line 14125
    new-instance v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;-><init>(Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;)V

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b:Lcom/alibaba/wukong/im/StatusNotifyListener;

    .line 14144
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b:Lcom/alibaba/wukong/im/StatusNotifyListener;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->registerListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 2586
    :cond_2
    invoke-static {}, Lelp;->a()Lelp;

    invoke-static {}, Lelp;->b()V

    .line 2588
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->onApplicationCreate()V

    .line 2589
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->onApplicationCreate()V

    .line 2590
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->onApplicationCreate()V

    .line 2591
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->onApplicationCreate()V

    .line 2592
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->onApplicationCreate()V

    .line 2593
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->onApplicationCreate()V

    .line 2594
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/projection/FocusInterface;->onApplicationCreate()V

    .line 2595
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->init(Landroid/app/Application;)V

    .line 2596
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->onApplicationCreate()V

    .line 2597
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->onApplicationCreate()V

    .line 2598
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onApplicationCreate()V

    .line 2599
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->onApplicationCreate()V

    .line 2602
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->checkWebviewDebuggingMode()V

    .line 2603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    sput-wide v2, Lcom/alibaba/android/rimet/RimetDDContext;->sInitWukongCostTime:J

    .line 2605
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$24;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$24;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2642
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/request/Request;

    .line 2644
    .local v8, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2645
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$25;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$25;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v8, v1}, Lcom/alibaba/doraemon/request/Request;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 2701
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->m()V

    .line 2704
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/bee/DBManager;->isCryptEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2705
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2706
    .local v0, "stat":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "DB"

    const-string/jumbo v3, "NOENCRYPT"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 2710
    .end local v0    # "stat":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_3
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$27;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$27;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setWukongFeatureInterface(Lcom/alibaba/wukong/im/WuKongFeatureInterface;)V

    .line 2716
    return-void

    .line 12186
    .end local v8    # "request":Lcom/alibaba/doraemon/request/Request;
    :catch_0
    move-exception v1

    .line 12187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2683
    .restart local v8    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_4
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$26;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$26;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v8, v1}, Lcom/alibaba/doraemon/request/Request;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    goto :goto_1
.end method

.method public isDebugBuild()Z
    .locals 1

    .prologue
    .line 2952
    const/4 v0, 0x0

    return v0
.end method

.method public isLogin()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3260
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 3261
    .local v0, "mUid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowPrivilegeDialog(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z
    .locals 4
    .param p1, "lastUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2216
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 2229
    :cond_1
    :goto_0
    return v1

    .line 2220
    :cond_2
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    if-eqz v3, :cond_1

    .line 2224
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iget v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    .line 2225
    .local v0, "lastUserRightsLevel":I
    iget-object v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    if-gt v3, v0, :cond_1

    move v1, v2

    .line 2229
    goto :goto_0
.end method

.method public loginSuccess()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 3759
    const-string/jumbo v1, "user_lg"

    sget-object v2, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RimetDDContext loginSuccess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->updateUserAccount()V

    .line 3761
    invoke-static {}, Leii;->a()Leii;

    move-result-object v1

    .line 21100
    const-string/jumbo v2, "ConfigEngine"

    const-string/jumbo v3, "ConfigEngine"

    const-string/jumbo v4, "on login->syncOAConfigService"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21101
    invoke-virtual {v1, v6}, Leii;->a(Z)V

    .line 3763
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c()V

    .line 3765
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->registerAccountReceiver()V

    .line 3766
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    .line 3767
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3768
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcls;->a(Ljava/lang/String;)V

    .line 3769
    const-class v1, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$46;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/RimetDDContext$46;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3783
    invoke-static {}, Leli;->a()Leli;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Leli;->a(Landroid/content/Context;)V

    .line 3784
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onLogin()V

    .line 3787
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isACCSEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3788
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    const/4 v2, 0x4

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpnUser(ILjava/lang/String;)V

    .line 3793
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->requestPrepareAsLogin()V

    .line 3794
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->sendLoginBroadcast()V

    .line 3795
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onLogin()V

    .line 3797
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$47;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$47;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3804
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->n()V

    .line 3805
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->o()V

    .line 3807
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "pref_key_debug_statistics_2_log"

    .line 3808
    invoke-static {v2, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 3807
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->setDebugStatistics2Log(Z)V

    .line 3810
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/rimet/RimetDDContext;->ctrlClickedAdvertisingId(Landroid/content/Context;)V

    .line 3811
    return-void

    .line 3790
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->disableACCS()V

    goto :goto_0
.end method

.method public logout(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3052
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->M()V

    .line 3055
    if-eqz p1, :cond_0

    .line 3056
    const-string/jumbo v0, "user_lg"

    sget-object v1, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RimetDDContext logout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->sendLogoutBroadcast()V

    .line 3059
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterXpn()V

    .line 3060
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unRegisterAccountReceiver()V

    .line 3061
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->d()V

    .line 3062
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    const/4 v1, 0x0

    .line 17175
    iput-boolean v1, v0, Lekg;->c:Z

    .line 3064
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->clearLocalCache()V

    .line 3066
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->e()V

    .line 3067
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->l()V

    .line 3069
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->n()V

    .line 3071
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v0

    invoke-virtual {v0}, Lejv;->b()V

    .line 3073
    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$33;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$33;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3084
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onLogout()V

    .line 3086
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->C()V

    .line 3089
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->l()V

    .line 3091
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->o()V

    .line 3093
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->g()V

    .line 3094
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    .line 3095
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a()V

    .line 3096
    invoke-static {}, Lelm;->b()Lelm;

    invoke-static {}, Lelm;->c()V

    .line 3099
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a()V

    .line 3102
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    invoke-virtual {v0}, Lcmk;->b()V

    .line 3105
    :cond_0
    return-void
.end method

.method public onConfigInit()V
    .locals 0

    .prologue
    .line 2822
    invoke-static {}, Leii;->a()Leii;

    invoke-static {}, Leii;->b()V

    .line 2823
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->systemLocale:Ljava/util/Locale;

    .line 471
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->setLocale()V

    .line 472
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregistConcernListener()V

    .line 458
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unRegisterMessageNotification()V

    .line 459
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unRegisterHomeScreen()V

    .line 460
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->closeSearchEngine()V

    .line 461
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregistPhoneStateListener()V

    .line 462
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterLocaleChangeReceiver()V

    .line 463
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterWebviewDebuggingReceiver()V

    .line 464
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterOfflineReceiver()V

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterScreenStatesReceiver()V

    .line 466
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3981
    invoke-super {p0, p1}, Lchy;->onTrimMemory(I)V

    .line 3982
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 3984
    :try_start_0
    const-string/jumbo v0, "general"

    const-string/jumbo v1, "onTrimMemory"

    const-string/jumbo v2, "onTrimMemory TRIM_MEMORY_UI_HIDDEN"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    invoke-static {}, Lcpr;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3991
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerAccountReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3231
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    if-nez v1, :cond_0

    .line 3232
    new-instance v1, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    invoke-direct {v1}, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    .line 3234
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3235
    .local v0, "accountFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.android.rimet.org.kickout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3236
    const-string/jumbo v1, "com.alibaba.android.rimet.org.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3237
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3238
    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3239
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3240
    return-void
.end method

.method public registerConnectivityReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3210
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3211
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3212
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$37;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$37;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3223
    return-void
.end method

.method protected registerLocaleChangeReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3540
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 3554
    :goto_0
    return-void

    .line 3543
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3544
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3545
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3546
    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$42;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$42;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    iput-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3553
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerScreenStatesReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3581
    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 3724
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3585
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3586
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3587
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3588
    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$43;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$43;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

    .line 3597
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3601
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v2, :cond_0

    .line 3604
    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$44;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$44;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 3723
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 3598
    :catch_0
    move-exception v0

    .line 3599
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public registerXpn()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$38;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$38;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3327
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isACCSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3329
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/AccsConfig;->a()V

    .line 3330
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V

    .line 3331
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 3332
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpnUser(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3334
    :catch_0
    move-exception v0

    .line 3335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->disableACCS()V

    goto :goto_0
.end method

.method protected runMethodOnCreate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 6021
    sput-object v2, Leda;->a:Landroid/content/Context;

    .line 377
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDynimaicSo()V

    .line 378
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_process_category"

    const-string/jumbo v4, "com.alibaba.android.rimet.CATEGORY_TOOLS_PROCESS"

    invoke-static {v2, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "processCategory":Ljava/lang/String;
    const-string/jumbo v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->saveCurrentVersion()V

    .line 382
    const-string/jumbo v2, "main"

    new-instance v3, Lekn;

    invoke-direct {v3}, Lekn;-><init>()V

    invoke-static {v2, v3}, Lcix;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 383
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDingtalkMiddle()V

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initEncrypt()V

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDoraemon()V

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initUserTrack()V

    .line 387
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initWukongIM()V

    .line 388
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initSearchEngine()V

    .line 389
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->setLocale()V

    .line 390
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initLightapp()V

    .line 391
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->registerScreenStatesReceiver()V

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initNavigator()V

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initMailAndSpaceContent()V

    .line 394
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initReceiver()V

    .line 395
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->functionTable()V

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initOACookie()V

    .line 397
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDagger()V

    .line 398
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initPhoneStatus()V

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->onConfigInit()V

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initCloudSettingMemCache()V

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initConference()V

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initContactListener()V

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initLog()V

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initOfflineTaskReceiver()V

    .line 405
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initHotpatch()V

    .line 406
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initQuotaInvalid()V

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initAsyncTasks()V

    .line 408
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->startAutoAttendance()V

    .line 409
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->startStepCountService()V

    .line 410
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initMtopSdk()V

    .line 411
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initSystemManager()V

    .line 412
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initFastConfigListener()V

    .line 413
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initInvitationManager()V

    .line 414
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initCustomTheme()V

    .line 415
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initPhotoFeature()V

    .line 417
    const-string/jumbo v2, "com.alibaba.android.rimet.CATEGORY_MAIN_PROCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a()V

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initThreadTimeHealthWarn()V

    .line 442
    :cond_1
    :goto_0
    const-string/jumbo v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "tools"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 443
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$23;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/RimetDDContext$23;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 452
    :cond_3
    invoke-static {}, Lcij;->a()Lcij;

    move-result-object v2

    .line 6044
    const-string/jumbo v3, "ActivityThread"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    .line 6045
    sget-object v4, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 6046
    new-instance v4, Lcij$1;

    invoke-direct {v4, v2}, Lcij$1;-><init>(Lcij;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 453
    return-void

    .line 421
    :cond_4
    const-string/jumbo v2, "tools"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDoraemon()V

    .line 423
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initMotu()V

    .line 424
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initDingtalkMiddle()V

    .line 425
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initNavigator()V

    .line 426
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->setLocale()V

    .line 427
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/bee/DBManager;->init(Landroid/content/Context;)V

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->initSystemManager()V

    .line 430
    const-string/jumbo v2, "com.alibaba.android.rimet.CATEGORY_TOOLS_PROCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a()V

    .line 433
    :cond_5
    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/RimetDDContext$12;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-static {v2}, Lcix;->a(Lcix$a;)V

    goto :goto_0
.end method

.method public saveCurrentVersion()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 6064
    invoke-static {v2}, Lcqa;->b(Landroid/content/Context;)I

    move-result v3

    .line 6065
    if-lez v3, :cond_0

    .line 6066
    invoke-static {v2}, Lcqa;->a(Landroid/content/Context;)[I

    move-result-object v4

    .line 6067
    array-length v0, v4

    if-nez v0, :cond_1

    .line 6068
    const-string/jumbo v0, "history_versions"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 6070
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    if-eq v0, v3, :cond_0

    .line 6071
    const-string/jumbo v5, ":"

    .line 6080
    array-length v0, v4

    if-nez v0, :cond_2

    .line 6081
    const-string/jumbo v0, ""

    .line 6072
    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v8

    const-string/jumbo v0, ":"

    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6073
    const-string/jumbo v1, "history_versions"

    invoke-static {v2, v1, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6083
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6084
    aget v0, v4, v8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 6085
    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_3

    .line 6086
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6087
    aget v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6085
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6089
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setAppBack()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3750
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mIsAppFront:Z

    if-eqz v0, :cond_0

    .line 3751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mIsAppFront:Z

    .line 3752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mBackTime:J

    .line 3754
    :cond_0
    return-void
.end method

.method public setAppFront()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mIsAppFront:Z

    .line 3739
    invoke-static {}, Lcof;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3741
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ljxf;->m(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3746
    :cond_0
    :goto_0
    return-void

    .line 3742
    :catch_0
    move-exception v0

    .line 3743
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLocale()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3531
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/RimetDDContext;->setLocale(ZLandroid/content/res/Configuration;)V

    .line 3532
    return-void
.end method

.method public setLocale(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3535
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/rimet/RimetDDContext;->setLocale(ZLandroid/content/res/Configuration;)V

    .line 3536
    return-void
.end method

.method public setLocale(ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "shouldSyncToCloudSetting"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3431
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getLocaleFromPref(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 3432
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 3453
    :cond_0
    :goto_0
    return-void

    .line 3437
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3438
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3440
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/rimet/RimetDDContext;->overwriteConfigurationLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 3441
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->functionTable()V

    .line 3442
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->H()V

    .line 3445
    :cond_2
    if-eqz p1, :cond_0

    .line 3446
    sget-object v2, Lcom/alibaba/android/rimet/RimetDDContext;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$40;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/rimet/RimetDDContext$40;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/util/Locale;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startAutoAttendance()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3510
    const-string/jumbo v2, "auto-attendance"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$41;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/RimetDDContext$41;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3519
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3520
    .local v0, "resumeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3524
    .end local v0    # "resumeIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3521
    :catch_0
    move-exception v1

    .line 3522
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startStepCountService()V
    .locals 1

    .prologue
    .line 4266
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->startStepCountService()V

    .line 4267
    return-void
.end method

.method public unRegisterAccountReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    if-eqz v0, :cond_0

    .line 3248
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mTokenExpireReceiver:Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    .line 3251
    :cond_0
    return-void
.end method

.method public unRegisterHomeScreen()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2934
    invoke-static {}, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a()Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    move-result-object v0

    .line 17047
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 17048
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;->c:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2935
    :cond_0
    return-void
.end method

.method public unRegisterMessageNotification()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2930
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    .line 16153
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->l()V

    .line 16155
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->h()V

    .line 16156
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setOnLightAppNotificationListener(Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;)V

    .line 16158
    iput-object v2, v1, Lekg;->a:Landroid/content/Context;

    .line 16160
    :try_start_0
    iget-object v0, v1, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 16161
    iget-object v0, v1, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16167
    :cond_0
    :goto_0
    iput-object v2, v1, Lekg;->b:Landroid/app/NotificationManager;

    .line 2931
    return-void

    .line 16163
    :catch_0
    move-exception v0

    .line 16164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregistConcernListener()V
    .locals 1

    .prologue
    .line 2947
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i()V

    .line 2948
    return-void
.end method

.method public unregistPhoneStateListener()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2943
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v1

    .line 17149
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17150
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->d:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 17152
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2944
    return-void
.end method

.method public unregisterLocaleChangeReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3558
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3560
    :cond_0
    return-void
.end method

.method public unregisterOfflineReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mOfflineTaskReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3571
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mOfflineTaskReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3573
    :cond_0
    return-void
.end method

.method public unregisterScreenStatesReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3728
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenStatesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3730
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    .line 3731
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mScreenLockWatcher:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3733
    :cond_1
    return-void
.end method

.method public unregisterWebviewDebuggingReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mSmartAppDebuggingReceiver:Lcom/alibaba/android/rimet/RimetDDContext$a;

    if-eqz v0, :cond_0

    .line 3564
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mSmartAppDebuggingReceiver:Lcom/alibaba/android/rimet/RimetDDContext$a;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext;->mSmartAppDebuggingReceiver:Lcom/alibaba/android/rimet/RimetDDContext$a;

    .line 3567
    :cond_0
    return-void
.end method

.method public unregisterXpn()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3343
    invoke-direct {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$39;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$39;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3360
    return-void
.end method

.method public updateLocaleInCloudSetting(Ljava/util/Locale;Z)V
    .locals 5
    .param p1, "userLocale"    # Ljava/util/Locale;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3999
    if-nez p1, :cond_1

    .line 4029
    :cond_0
    :goto_0
    return-void

    .line 4002
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4007
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4008
    .local v0, "settings":Landroid/content/SharedPreferences;
    if-nez p2, :cond_2

    const-string/jumbo v1, "cloud_locale"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4012
    :cond_2
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    sget-object v2, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->LOCALE:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/RimetDDContext$49;

    invoke-direct {v4, p0, v0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$49;-><init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/SharedPreferences;Ljava/util/Locale;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public updateQuotaCenter(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 3268
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3269
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    invoke-virtual {v0}, Lekg;->a()V

    .line 3270
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->i()V

    .line 3272
    :cond_0
    return-void
.end method

.method public updateUserAccount()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3275
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3277
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3278
    .local v0, "usernick":Ljava/lang/String;
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->setUid(Ljava/lang/String;)V

    .line 3279
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->userLogin(Ljava/lang/String;)V

    .line 3281
    .end local v0    # "usernick":Ljava/lang/String;
    :cond_0
    return-void
.end method
