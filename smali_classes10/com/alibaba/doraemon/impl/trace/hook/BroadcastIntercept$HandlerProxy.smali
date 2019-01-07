.class Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;
.super Landroid/os/Handler;
.source "BroadcastIntercept.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerProxy"
.end annotation


# static fields
.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1


# instance fields
.field private mRealHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;->mRealHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;->mRealHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 122
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v3, v4, :cond_1

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;->mRealHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :goto_0
    :try_start_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 134
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "curTraceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    const-string/jumbo v3, "h"

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v2

    .line 138
    .local v2, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->decTransferRef()V

    .line 140
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 146
    .end local v0    # "curTraceId":Ljava/lang/String;
    .end local v2    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 129
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;->mRealHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
