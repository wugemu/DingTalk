.class public abstract Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;
.super Ljava/lang/Object;
.source "AbstractSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLE_INTERVAL:I = 0x12c


# instance fields
.field protected final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field protected mSampleInterval:J

.field protected mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "sampleInterval"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 42
    const-wide/16 p1, 0x12c

    .line 44
    :cond_0
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mSampleInterval:J

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method abstract doSample()Lcom/alibaba/fastjson/JSONObject;
.end method

.method public registerCallback(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;->getInstance()Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/sampler/ReportConfig;->getSampleDelay()I

    move-result v2

    int-to-long v2, v2

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallback(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
