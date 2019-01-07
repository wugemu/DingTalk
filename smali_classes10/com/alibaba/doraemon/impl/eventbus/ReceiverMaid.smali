.class public Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "ReceiverMaid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;,
        Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTION:Ljava/lang/String; = "default"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Landroid/content/BroadcastReceiver;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsLocalReceiver:Z

.field private mIsStoped:Z

.field mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private mProxy:Landroid/content/BroadcastReceiver;

.field private mToDeliverys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Landroid/content/BroadcastReceiver;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "isLocalReceiver"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsStoped:Z

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mDelegate:Landroid/content/BroadcastReceiver;

    .line 48
    iput-boolean p4, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsLocalReceiver:Z

    .line 49
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;-><init>(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mProxy:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mDelegate:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsStoped:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    if-ne v3, p1, :cond_4

    .line 132
    iget-boolean v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsLocalReceiver:Z

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mProxy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 137
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mDelegate:Landroid/content/BroadcastReceiver;

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    .line 139
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 142
    .local v1, "broadcasts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;

    .line 145
    .local v0, "broadcast":Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;
    if-eqz v0, :cond_0

    .line 146
    iget-object v3, v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 149
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 166
    .end local v0    # "broadcast":Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;
    .end local v1    # "broadcasts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 135
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mProxy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 156
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mFilter:Landroid/content/IntentFilter;

    .line 157
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v3, :cond_5

    .line 158
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 166
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 160
    :cond_5
    const-string/jumbo v3, "ReceiverMaid"

    const-string/jumbo v4, "ReceiverMaid onActivityDestroyed lifecycleMonitor is null !"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 162
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v3, v4}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
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
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    if-ne v3, p1, :cond_1

    .line 89
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsStoped:Z

    .line 90
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mToDeliverys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 93
    .local v1, "broadcasts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;

    .line 96
    .local v0, "broadcast":Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;
    if-eqz v0, :cond_0

    .line 97
    iget-object v3, v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 98
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mDelegate:Landroid/content/BroadcastReceiver;

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    iget-object v3, v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 102
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 108
    .end local v0    # "broadcast":Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;
    .end local v1    # "broadcasts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsStoped:Z

    .line 121
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mIsLocalReceiver:Z

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mProxy:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    :goto_1
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mProxy:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 68
    :cond_3
    const-string/jumbo v0, "ReceiverMaid"

    const-string/jumbo v1, "ReceiverMaid onActivityDestroyed lifecycleMonitor is null !"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
