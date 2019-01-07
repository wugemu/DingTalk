.class public Lcom/ut/mini/anti_cheat/AntiCheatTracker;
.super Ljava/lang/Object;
.source "AntiCheatTracker.java"

# interfaces
.implements Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field private static instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;


# instance fields
.field private init:Z

.field private mActivity:Landroid/app/Activity;

.field private mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    invoke-direct {v0}, Lcom/ut/mini/anti_cheat/AntiCheatTracker;-><init>()V

    sput-object v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    .line 22
    iput-object v1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    return-void
.end method

.method public static getInstance()Lcom/ut/mini/anti_cheat/AntiCheatTracker;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 29
    invoke-static {}, Lamu;->c()V

    .line 30
    iget-boolean v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    .line 32
    new-instance v0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    .line 33
    invoke-static {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public onScreenCaptured(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lamu;->c()V

    .line 89
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "utPageName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 91
    .local v2, "nContainName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "current":Ljava/lang/String;
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "screen_capture"

    invoke-direct {v0, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "anti_cheat"

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 97
    const-string/jumbo v4, "page_name"

    invoke-virtual {v0, v4, v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 98
    const-string/jumbo v4, "contain_name"

    invoke-virtual {v0, v4, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 99
    const-string/jumbo v4, "current_time"

    invoke-virtual {v0, v4, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 100
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    .end local v1    # "current":Ljava/lang/String;
    .end local v2    # "nContainName":Ljava/lang/String;
    .end local v3    # "utPageName":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onScreenCapturedWithDeniedPermission()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onSwitchBackground()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-virtual {v0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->stop()V

    .line 42
    :cond_0
    return-void
.end method

.method public onSwitchForeground()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-virtual {v0, p0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->start(Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;)V

    .line 49
    :cond_0
    return-void
.end method
