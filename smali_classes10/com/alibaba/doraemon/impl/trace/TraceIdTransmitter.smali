.class public Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;
.super Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;
.source "TraceIdTransmitter.java"

# interfaces
.implements Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;,
        Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;
    }
.end annotation


# instance fields
.field private mTransferId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;-><init>()V

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    .line 25
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 26
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V

    .line 27
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MessageUtils;->regMessageExeListener(Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;)V

    .line 29
    return-void
.end method

.method public static obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MessageUtils;->obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public static wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public onAfterThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "traceId":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 72
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decRef()I

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onBeforeThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string/jumbo v2, "b"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 60
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incRef()I

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decTransferRef()V

    .line 65
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public onMessageAfterExe(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onMessageBeforeExe(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-string/jumbo v2, "e"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 103
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decTransferRef()V

    .line 106
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public onMessageRecycled(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public onMessageSend(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v2, "m"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 93
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incTransferRef()V

    .line 95
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    return-void
.end method

.method public onThreadCanceled(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public onThreadStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "traceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->mTransferId:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v2, "t"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v0

    .line 51
    .local v0, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incTransferRef()V

    .line 53
    .end local v0    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    return-void
.end method
