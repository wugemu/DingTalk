.class public Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;
.super Ljava/lang/Object;
.source "UTAppBackgroundTimeoutDetector.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field private static final TIMEOUT:J = 0x927c0L

.field private static s_instance:Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;


# instance fields
.field private mSwitchBackgroundTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->s_instance:Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->mSwitchBackgroundTimestamp:J

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->s_instance:Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    invoke-direct {v0}, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;-><init>()V

    sput-object v0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->s_instance:Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    .line 27
    :cond_0
    sget-object v0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->s_instance:Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    return-void
.end method

.method public onSwitchBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->mSwitchBackgroundTimestamp:J

    .line 33
    return-void
.end method

.method public onSwitchForeground()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 37
    iget-wide v0, p0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->mSwitchBackgroundTimestamp:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->mSwitchBackgroundTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->sessionTimeout()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->c(Ljava/util/Map;)V

    .line 43
    :cond_0
    iput-wide v4, p0, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->mSwitchBackgroundTimestamp:J

    .line 44
    return-void
.end method
