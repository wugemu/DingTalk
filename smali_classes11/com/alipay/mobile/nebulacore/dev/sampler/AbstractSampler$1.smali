.class Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;
.super Ljava/lang/Object;
.source "AbstractSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->doSample()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 27
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;

    .line 28
    .local v0, "callback":Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;->onSample(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 33
    .end local v0    # "callback":Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/sampler/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    .line 35
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->access$000(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;

    iget-wide v4, v4, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;->mSampleInterval:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_2
    return-void
.end method
