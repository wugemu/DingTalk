.class public Lcom/alibaba/motu/watch/MotuWatch;
.super Ljava/lang/Object;
.source "MotuWatch.java"


# static fields
.field private static instance:Lcom/alibaba/motu/watch/MotuWatch;


# instance fields
.field private isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mainLooperHandler:Lhvg;

.field private myWatchListenerList:Ljava/util/List;

.field private watchConfig:Lcom/alibaba/motu/watch/WatchConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    iput-object v2, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    .line 24
    iput-object v2, p0, Lcom/alibaba/motu/watch/MotuWatch;->mainLooperHandler:Lhvg;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->myWatchListenerList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/motu/watch/MotuWatch;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->initMotuWatch()Lcom/alibaba/motu/watch/MotuWatch;

    .line 38
    :cond_0
    sget-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;

    return-object v0
.end method

.method private static declared-synchronized initMotuWatch()Lcom/alibaba/motu/watch/MotuWatch;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/alibaba/motu/watch/MotuWatch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/motu/watch/MotuWatch;

    invoke-direct {v0}, Lcom/alibaba/motu/watch/MotuWatch;-><init>()V

    sput-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;

    .line 32
    :cond_0
    sget-object v0, Lcom/alibaba/motu/watch/MotuWatch;->instance:Lcom/alibaba/motu/watch/MotuWatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeMainLoopMonitor()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/motu/watch/WatchConfig;->closeMainLooperMonitor:Z

    .line 127
    :cond_0
    return-void
.end method

.method public closeMainLooperSampling()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/motu/watch/WatchConfig;->isCloseMainLooperSampling:Z

    .line 118
    :cond_0
    return-void
.end method

.method public enableWatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "isCloseSampling"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 42
    iget-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 45
    iget-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    if-nez v4, :cond_0

    .line 46
    new-instance v4, Lcom/alibaba/motu/watch/WatchConfig;

    invoke-direct {v4}, Lcom/alibaba/motu/watch/WatchConfig;-><init>()V

    iput-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    .line 49
    :cond_0
    move-object v3, p2

    .line 51
    .local v3, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 52
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v4, "com.taobao.taobao"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 54
    .local v2, "packageVersion":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 56
    move-object v3, v2

    .line 64
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageVersion":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v4, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appVersion is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v4, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "real Version is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-direct {v0, p1}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "applicationIdleMonitor":Lcom/alibaba/motu/watch/ApplicationIdleMonitor;
    iget-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    invoke-virtual {p0, v3}, Lcom/alibaba/motu/watch/MotuWatch;->isBetaVersion(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/alibaba/motu/watch/WatchConfig;->isBetaVersion:Z

    .line 72
    iget-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/alibaba/motu/watch/WatchConfig;->isCloseMainLooperSampling:Z

    .line 74
    iget-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    iget-boolean v4, v4, Lcom/alibaba/motu/watch/WatchConfig;->enableCatchMainLoopException:Z

    if-eqz v4, :cond_2

    .line 75
    new-instance v4, Lhvg;

    iget-object v5, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    invoke-direct {v4, p1, v5, v0}, Lhvg;-><init>(Landroid/content/Context;Lcom/alibaba/motu/watch/WatchConfig;Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)V

    iput-object v4, p0, Lcom/alibaba/motu/watch/MotuWatch;->mainLooperHandler:Lhvg;

    .line 79
    :cond_2
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object v4

    new-instance v5, Lhvd;

    invoke-direct {v5}, Lhvd;-><init>()V

    invoke-virtual {v4, v5}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V

    .line 82
    new-instance v4, Lhvf;

    invoke-direct {v4}, Lhvf;-><init>()V

    invoke-virtual {p0, v4}, Lcom/alibaba/motu/watch/MotuWatch;->setMyWatchListenerList(Lhvc;)V

    .line 87
    .end local v0    # "applicationIdleMonitor":Lcom/alibaba/motu/watch/ApplicationIdleMonitor;
    .end local v3    # "version":Ljava/lang/String;
    :cond_3
    :goto_1
    return v7

    .line 61
    .restart local v3    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    sget-object v4, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "get version err"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v3    # "version":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "context or app version is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMyWatchListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->myWatchListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getWatchConfig()Lcom/alibaba/motu/watch/WatchConfig;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/alibaba/motu/watch/WatchConfig;

    invoke-direct {v0}, Lcom/alibaba/motu/watch/WatchConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/motu/watch/MotuWatch;->watchConfig:Lcom/alibaba/motu/watch/WatchConfig;

    return-object v0
.end method

.method public isBetaVersion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    :try_start_0
    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "strarray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 138
    .end local v1    # "strarray":[Ljava/lang/String;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "is beta version err"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setMyWatchListenerList(Lhvc;)V
    .locals 3
    .param p1, "watchListener"    # Lhvc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/motu/watch/MotuWatch;->myWatchListenerList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alibaba/motu/watch/MotuWatch;->myWatchListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set my watch listener err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
