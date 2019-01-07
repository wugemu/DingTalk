.class public Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "HandlerMaid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHDCallback:Landroid/os/Handler$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mIsStoped:Z

.field private mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private mMessages:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler$Callback;Landroid/os/Looper;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mIsStoped:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHDCallback:Landroid/os/Handler$Callback;

    .line 42
    if-nez p3, :cond_2

    .line 43
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;-><init>(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHandler:Landroid/os/Handler;

    .line 47
    :goto_1
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 48
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;-><init>(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 51
    :cond_3
    const-string/jumbo v0, "HandlerMaid"

    const-string/jumbo v1, "HandlerMaid lifecycleMonitor is null !"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;-><init>(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHDCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mIsStoped:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    if-ne p1, v3, :cond_1

    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHDCallback:Landroid/os/Handler$Callback;

    .line 131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    .line 132
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 134
    .local v2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 137
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 141
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 152
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 146
    :cond_2
    const-string/jumbo v3, "HandlerMaid"

    const-string/jumbo v4, "HandlerMaid onActivityDestroyed lifecycleMonitor is null !"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 148
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v3, v4}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mActivity:Landroid/app/Activity;

    if-ne p1, v4, :cond_2

    .line 77
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mIsStoped:Z

    .line 78
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mMessages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 80
    .local v2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 81
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 83
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 84
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 87
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_0
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHDCallback:Landroid/os/Handler$Callback;

    invoke-interface {v4, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 96
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v2    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHDCallback:Landroid/os/Handler$Callback;

    invoke-interface {v4, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 107
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Message;>;"
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mIsStoped:Z

    .line 119
    return-void
.end method

.method public toHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
