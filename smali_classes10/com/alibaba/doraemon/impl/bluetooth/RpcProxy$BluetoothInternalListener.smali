.class public Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;
.super Ljava/lang/Object;
.source "RpcProxy.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothInternalListener"
.end annotation


# instance fields
.field private mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    .param p2, "stateListener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 164
    return-void
.end method


# virtual methods
.method public onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;
    .param p4, "errorReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->stopClientChannel(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->mBluetoothInternalListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 8
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "packet"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "onRead "

    aput-object v3, v2, v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    :cond_0
    instance-of v2, p2, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/util/Map;

    move-result-object v3

    move-object v2, p2

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->messageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;

    .line 175
    .local v1, "future":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
    if-eqz v1, :cond_1

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->getTimeoutTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljaf;

    move-result-object v2

    check-cast p2, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    .end local p2    # "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    invoke-virtual {p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->body()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->getResultType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljaf;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "future":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
    :cond_1
    :goto_0
    return-void

    .line 179
    .restart local v1    # "future":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BleRpcProxy"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "ack data error:"

    aput-object v4, v3, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
