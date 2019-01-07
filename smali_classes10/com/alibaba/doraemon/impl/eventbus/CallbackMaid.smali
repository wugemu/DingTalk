.class public Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "CallbackMaid.java"

# interfaces
.implements Lcom/alibaba/doraemon/eventbus/CancelableCallback;
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private mActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/doraemon/impl/eventbus/ActionKey;",
            "Lcom/alibaba/doraemon/impl/eventbus/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Ljava/lang/Object;

.field private mHashCode:I

.field private mIsCanceled:Z

.field private mIsStoped:Z

.field mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 2
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsStoped:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActions:Ljava/util/Map;

    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    .line 55
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mHashCode:I

    .line 58
    :cond_2
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    goto :goto_0

    .line 62
    :cond_3
    const-string/jumbo v0, "CallbackMaid"

    const-string/jumbo v1, "CallbackMaid lifecycleMonitor is null !"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;-><init>(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method private unbindCallback(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    .line 196
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mLifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 207
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    const-string/jumbo v0, "CallbackMaid"

    const-string/jumbo v1, "CallbackMaid onActivityDestroyed lifecycleMonitor is null !"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThreadNoneRelease()V

    .line 213
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsCanceled:Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->unbindCallback(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "methodName":Ljava/lang/String;
    const-string/jumbo v3, "equals"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 76
    aget-object v2, p3, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    aget-object v3, p3, v4

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 124
    :cond_0
    :goto_0
    return-object v2

    .line 79
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 83
    const-string/jumbo v3, "hashCode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget v2, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/doraemon/eventbus/CallbackUnbinder;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "unbindEventBulter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->unbindCallback(Landroid/app/Activity;)V

    goto :goto_0

    .line 96
    :cond_4
    :try_start_0
    const-string/jumbo v3, "hashCode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "toString"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "t":Ljava/lang/Throwable;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 104
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7
    monitor-enter p0

    .line 108
    :try_start_1
    iget-boolean v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsStoped:Z

    if-eqz v3, :cond_8

    .line 109
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActions:Ljava/util/Map;

    new-instance v4, Lcom/alibaba/doraemon/impl/eventbus/ActionKey;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/doraemon/impl/eventbus/ActionKey;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/doraemon/impl/eventbus/Action;

    invoke-direct {v5, p2, p3}, Lcom/alibaba/doraemon/impl/eventbus/Action;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit p0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "t":Ljava/lang/Throwable;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 121
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsCanceled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->unbindCallback(Landroid/app/Activity;)V

    .line 189
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    if-ne p1, v4, :cond_2

    .line 139
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsStoped:Z

    .line 140
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 142
    .local v1, "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/eventbus/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v0, "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 149
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 150
    iget-object v4, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 159
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v3

    .line 161
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 162
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 170
    .end local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .end local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 153
    .restart local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .restart local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 156
    :cond_0
    iget-object v4, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mDelegate:Ljava/lang/Object;

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 165
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .end local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;->mIsStoped:Z

    .line 181
    :cond_0
    return-void
.end method
