.class public Lcom/taobao/weex/tracing/WXTracing;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/tracing/WXTracing$TraceInfo;,
        Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    }
.end annotation


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/tracing/WXTracing;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static currentThreadName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 98
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "WeexJSBridgeThread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string/jumbo v0, "JSThread"

    .line 108
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "WeeXDomThread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const-string/jumbo v0, "DOMThread"

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 105
    const-string/jumbo v0, "UIThread"

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    return v0
.end method

.method public static newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .locals 2
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "parentId"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;-><init>()V

    .line 113
    .local v0, "traceEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    iput-object p0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    .line 114
    iput-object p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 116
    iput p2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    .line 117
    return-object v0
.end method

.method public static nextId()I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/taobao/weex/tracing/WXTracing;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized submit(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .locals 3
    .param p0, "event"    # Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    .prologue
    .line 48
    const-class v2, Lcom/taobao/weex/tracing/WXTracing;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;

    move-result-object v0

    .line 49
    .local v0, "tracingAdapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0}, Lcom/taobao/weex/adapter/ITracingAdapter;->submitTracingEvent(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v2

    return-void

    .line 48
    .end local v0    # "tracingAdapter":Lcom/taobao/weex/adapter/ITracingAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
