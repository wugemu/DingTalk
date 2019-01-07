.class public Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;
.super Ljava/lang/Object;
.source "BackgroundPowerSaver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPowerSaver"


# instance fields
.field private activeActivityCount:I

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 44
    const-string/jumbo v0, "BackgroundPowerSaver"

    const-string/jumbo v1, "BackgroundPowerSaver requires API 18 or higher."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countActiveActivityStrategy"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 73
    const-string/jumbo v0, "BackgroundPowerSaver"

    const-string/jumbo v1, "activity paused: %s active activities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-gtz v0, :cond_0

    .line 75
    const-string/jumbo v0, "BackgroundPowerSaver"

    const-string/jumbo v1, "setting background mode"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, v5}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 62
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-gtz v0, :cond_0

    .line 63
    const-string/jumbo v0, "BackgroundPowerSaver"

    const-string/jumbo v1, "reset active activity count on resume.  It was %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iput v5, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, v4}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 67
    const-string/jumbo v0, "BackgroundPowerSaver"

    const-string/jumbo v1, "activity resumed: %s active activities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    return-void
.end method
