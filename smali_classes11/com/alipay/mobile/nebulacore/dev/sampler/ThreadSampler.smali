.class public Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;
.super Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;
.source "ThreadSampler.java"


# instance fields
.field private final mResultCache:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "sampleInterval"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;-><init>(J)V

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->mResultCache:Lcom/alibaba/fastjson/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method doSample()Lcom/alibaba/fastjson/JSONObject;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    .line 21
    .local v2, "group":Ljava/lang/ThreadGroup;
    move-object v5, v2

    .line 24
    .local v5, "topGroup":Ljava/lang/ThreadGroup;
    :goto_0
    if-eqz v2, :cond_0

    .line 25
    move-object v5, v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v2

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    .line 31
    .local v3, "slackSize":I
    new-array v4, v3, [Ljava/lang/Thread;

    .line 34
    .local v4, "slackThreads":[Ljava/lang/Thread;
    invoke-virtual {v5, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 35
    .local v0, "actualSize":I
    new-array v1, v0, [Ljava/lang/Thread;

    .line 37
    .local v1, "actualThreads":[Ljava/lang/Thread;
    invoke-static {v4, v7, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->mResultCache:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "size"

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->mResultCache:Lcom/alibaba/fastjson/JSONObject;

    return-object v6
.end method
