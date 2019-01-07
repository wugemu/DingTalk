.class Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiverProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string/jumbo v0, "com.alibaba.doraemon.RECEIVER"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$100(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$200(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-direct {v2, v3, p1, p2}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;-><init>(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$200(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "default"

    new-instance v2, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-direct {v2, v3, p1, p2}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;-><init>(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_2
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$ReceiverProxy;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->notifyThreadMonitor(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
