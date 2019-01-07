.class Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;
.super Landroid/os/Handler;
.source "IActivityManagerMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerReceiverProxy"
.end annotation


# instance fields
.field private mRealHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;

    .line 100
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;->mRealHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    .line 108
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->access$000()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mCurIntent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->access$002(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 110
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->access$000()Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->access$000()Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->access$000()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.alibaba.doraemon.TRACEID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;->mRealHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;->mRealHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 129
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 131
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :goto_0
    return v3

    .line 122
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;->mRealHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter;->wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 129
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v3

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v3

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    throw v3
.end method
