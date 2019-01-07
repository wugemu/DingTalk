.class Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;
.super Landroid/os/Handler;
.source "HandlerMaid.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    monitor-exit p0

    .line 196
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$100(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$200(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 184
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 194
    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    goto :goto_1

    .line 188
    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid$HandlerProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
