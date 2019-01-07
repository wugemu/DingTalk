.class public Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ACTION_LWP_HEARTBEAT:Ljava/lang/String; = "com.alibaba.dingtalk.HEARTBEAT"

.field private static final TAG:Ljava/lang/String; = "StatisticsTrigger"

.field private static sInstance:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;


# instance fields
.field private BACKGROUND_SAMPLE_INTERVAL:I

.field private FOREGROUND_SAMPLE_INTERVAL:I

.field private mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private mBGSampleRunnable:Ljava/lang/Runnable;

.field private mFGSampleRunnable:Ljava/lang/Runnable;

.field mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

.field mHeartbeatReceiver:Landroid/content/BroadcastReceiver;

.field mMainLooperHandler:Landroid/os/Handler;

.field private final mOnTriggerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v2, 0x927c0

    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->FOREGROUND_SAMPLE_INTERVAL:I

    .line 45
    const v2, 0x1b7740

    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->BACKGROUND_SAMPLE_INTERVAL:I

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    .line 52
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHeartbeatReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 130
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$3;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$3;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mBGSampleRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mFGSampleRunnable:Ljava/lang/Runnable;

    .line 180
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 181
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 183
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    const-string/jumbo v3, "StatisticsTrigger"

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    .line 187
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->isHuaweiBrand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const v2, 0xdbba0

    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->FOREGROUND_SAMPLE_INTERVAL:I

    .line 191
    const v2, 0x5265c0

    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->BACKGROUND_SAMPLE_INTERVAL:I

    .line 194
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alibaba.dingtalk.HEARTBEAT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHeartbeatReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mFGSampleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mBGSampleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->BACKGROUND_SAMPLE_INTERVAL:I

    return v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->FOREGROUND_SAMPLE_INTERVAL:I

    return v0
.end method

.method private getHandleInner()Landroid/os/Handler;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 274
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mMainLooperHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 277
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mMainLooperHandler:Landroid/os/Handler;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mMainLooperHandler:Landroid/os/Handler;

    .line 283
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;
    .locals 2

    .prologue
    .line 171
    const-class v1, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->sInstance:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->sInstance:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .line 175
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->sInstance:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTriggerListener(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void
.end method

.method public addTriggerListenerAtEnd(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method public addTriggerListenerAtHead(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandleInner()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

.method public removeRunnabletrigger(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandleInner()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    return-void
.end method

.method public removeTriggerListener(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mOnTriggerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    return-void
.end method

.method public trigger(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandleInner()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public triggerAtFixedDelay(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandleInner()Landroid/os/Handler;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    :cond_0
    return-void
.end method
