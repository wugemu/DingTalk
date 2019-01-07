.class public Lcom/ut/mini/exposure/TrackerManager;
.super Ljava/lang/Object;
.source "TrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/exposure/TrackerManager$1;,
        Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;
    }
.end annotation


# static fields
.field private static instance:Lcom/ut/mini/exposure/TrackerManager;


# instance fields
.field public commonInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityLifecycle:Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

.field private mExposureViewHandle:Lcom/ut/mini/internal/ExposureViewHandle;

.field private mHandle:Landroid/os/Handler;

.field private mNeedToTrackActivitys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/ut/mini/exposure/TrackerManager;

    invoke-direct {v0}, Lcom/ut/mini/exposure/TrackerManager;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerManager;->instance:Lcom/ut/mini/exposure/TrackerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/ut/mini/exposure/TrackerManager;->mNeedToTrackActivitys:Ljava/util/Set;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ut/mini/exposure/TrackerManager;->commonInfoMap:Ljava/util/HashMap;

    .line 35
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerManager;->mHandle:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ut_exposure"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ut/mini/exposure/TrackerManager;->mHandle:Landroid/os/Handler;

    .line 40
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/ut/mini/exposure/TrackerManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/exposure/TrackerManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mNeedToTrackActivitys:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance()Lcom/ut/mini/exposure/TrackerManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ut/mini/exposure/TrackerManager;->instance:Lcom/ut/mini/exposure/TrackerManager;

    return-object v0
.end method


# virtual methods
.method public addToTrack(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mNeedToTrackActivitys:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mExposureViewHandle:Lcom/ut/mini/internal/ExposureViewHandle;

    return-object v0
.end method

.method public getThreadHandle()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 53
    sget-boolean v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;-><init>(Lcom/ut/mini/exposure/TrackerManager;Lcom/ut/mini/exposure/TrackerManager$1;)V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mActivityLifecycle:Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

    .line 55
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mActivityLifecycle:Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/ut/mini/exposure/ExposureConfigMgr;->init()V

    .line 58
    return-void
.end method

.method public registerExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/ut/mini/internal/ExposureViewHandle;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/ut/mini/exposure/TrackerManager;->mExposureViewHandle:Lcom/ut/mini/internal/ExposureViewHandle;

    .line 211
    return-void
.end method

.method public removeToTrack(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mNeedToTrackActivitys:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCommonInfoMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "commonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->commonInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->commonInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public unRegisterExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/ut/mini/internal/ExposureViewHandle;

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mExposureViewHandle:Lcom/ut/mini/internal/ExposureViewHandle;

    .line 215
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mActivityLifecycle:Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerManager;->mActivityLifecycle:Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 67
    :cond_0
    return-void
.end method
