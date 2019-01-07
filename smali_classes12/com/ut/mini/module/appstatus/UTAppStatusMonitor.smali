.class public Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
.super Ljava/lang/Object;
.source "UTAppStatusMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;,
        Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;


# instance fields
.field private mActivitiesActive:I

.field private mAppStatusCallbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStatusCallbacksLockObj:Ljava/lang/Object;

.field private mApplicationStatusLockObj:Ljava/lang/Object;

.field private mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mIsInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-direct {v0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;-><init>()V

    sput-object v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->s_instance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 19
    iput-boolean v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusLockObj:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private _clearApplicationStatusCheckExistingTimer()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 55
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$102(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->s_instance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 63
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 74
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 84
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 94
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 104
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->_clearApplicationStatusCheckExistingTimer()V

    .line 113
    iget v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 115
    iget-boolean v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    if-nez v2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 120
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onSwitchForeground()V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    .line 125
    return-void

    .line 122
    .restart local v0    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 130
    iget v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->_clearApplicationStatusCheckExistingTimer()V

    .line 134
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;-><init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 136
    :cond_0
    return-void
.end method

.method public registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 2
    .param p1, "aCallbacks"    # Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v1

    .line 40
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 2
    .param p1, "aCallbacks"    # Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v1

    .line 48
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
