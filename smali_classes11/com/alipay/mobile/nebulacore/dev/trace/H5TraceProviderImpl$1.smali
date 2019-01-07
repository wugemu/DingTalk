.class Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->checkStartSampler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSample(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 5
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$000(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$100(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 100
    :goto_0
    return v2

    .line 90
    :cond_0
    const-string/jumbo v3, "size"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, "threadSize":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$200(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 93
    .local v0, "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->onSampleThread(I)V

    goto :goto_1

    .line 95
    .end local v0    # "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$300(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 96
    .restart local v0    # "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->onSampleThread(I)V

    goto :goto_2

    .line 99
    .end local v0    # "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$000(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    const/4 v2, 0x1

    goto :goto_0
.end method
