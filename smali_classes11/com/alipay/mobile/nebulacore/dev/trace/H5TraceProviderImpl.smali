.class public Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TraceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    }
.end annotation


# static fields
.field private static final SAMPLE_INTERVAL:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "H5TraceProviderImpl"


# instance fields
.field private hasTraceBetweenInterval:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pendingBlockingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingNonBlockingSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingReportList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private sampler:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

.field private final sendedViewIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendedViewIdSet:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingReportList:Ljava/util/Queue;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingNonBlockingSession:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->hasTraceBetweenInterval:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->hasTraceBetweenInterval:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingNonBlockingSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendLogAsync(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private checkStartSampler()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sampler:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sampler:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sampler:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->registerCallback(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sampler:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->start()V

    .line 105
    return-void
.end method

.method private enqueueOrSend(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    .local v2, "timestamp":J
    const-string/jumbo v4, "ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v4, "viewId"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "viewId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    const-string/jumbo v4, "H5TraceProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "not send "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "name"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " because no viewId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingReportList:Ljava/util/Queue;

    invoke-interface {v4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingReportList:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingReportList:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 227
    .local v0, "pending":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "viewId"

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendLogAsync(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 230
    .end local v0    # "pending":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingReportList:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 232
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendLogAsync(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private formatParam(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const-string/jumbo v0, ""

    .line 61
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isTraceSwitchEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    const-string/jumbo v0, "h5_trace_debug_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private sendLogAsync(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextId()I

    move-result v3

    int-to-long v0, v3

    .line 238
    .local v0, "currentId":J
    const-string/jumbo v3, "id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v3, "bugmeSwitchOpen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 241
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 242
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->post(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method

.method private traceComes()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->isTraceSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->checkStartSampler()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->hasTraceBetweenInterval:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->idleCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method


# virtual methods
.method public event(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    const-string/jumbo v1, "H5TraceProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 111
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "performance"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "subType"

    const-string/jumbo v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "thread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v1, "params"

    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->formatParam(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->traceComes()V

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->isTraceSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendedViewIdSet:Ljava/util/Set;

    .line 122
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pageLoad"

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "domReady"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->sendedViewIdSet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 163
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->enqueueOrSend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 164
    return-void
.end method

.method public sessionBegin(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    const-string/jumbo v5, "H5TraceProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sessionBegin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->traceComes()V

    .line 171
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->formatParam(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "paramStr":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v3, "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->start()V

    .line 176
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "async"

    invoke-virtual {p3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingNonBlockingSession:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "threadName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 182
    .local v0, "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    if-nez v0, :cond_1

    .line 183
    move-object v0, v3

    .line 184
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->insert(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;)V

    goto :goto_0
.end method

.method public sessionEnd(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v5, "H5TraceProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sessionEnd "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->traceComes()V

    .line 196
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->formatParam(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "paramStr":Ljava/lang/String;
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "async"

    invoke-virtual {p3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingNonBlockingSession:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 201
    .local v3, "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->end()Z

    .line 203
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingNonBlockingSession:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->toJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->enqueueOrSend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 214
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "threadName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 209
    .local v0, "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->end()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->pendingBlockingSessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->toJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->enqueueOrSend(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
