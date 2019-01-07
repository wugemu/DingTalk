.class public Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;
.super Ljava/lang/Object;
.source "RpcServiceManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothInternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 274
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-eqz v1, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 276
    .local v0, "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v0    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    :cond_1
    return-void
.end method

.method public onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;
    .param p4, "errorReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 307
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 309
    .local v0, "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v0    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    :cond_1
    return-void
.end method

.method public onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bluetoothId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 287
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-eqz v2, :cond_1

    .line 288
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 289
    .local v1, "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v1, p2, p3}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v1    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->getUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 297
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;>;"
    invoke-interface {p1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 298
    if-nez v0, :cond_2

    .line 302
    :goto_1
    return-void

    .line 301
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 12
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "inData"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    instance-of v8, p2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    if-eqz v8, :cond_1

    move-object v8, p2

    .line 206
    check-cast v8, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "clz":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->getUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 208
    .local v7, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;

    .line 209
    .local v6, "serviceInfo":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    const/4 v5, 0x0

    .line 210
    .local v5, "ret":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 211
    iget-object v9, v6, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mMethodMap:Ljava/util/HashMap;

    move-object v8, p2

    check-cast v8, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 212
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 214
    :try_start_0
    iget-object v9, v6, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mService:Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljaf;

    move-result-object v10

    move-object v0, p2

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->body()[B

    move-result-object v8

    .line 215
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 214
    invoke-virtual {v10, v8, v11}, Ljaf;->a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 221
    .end local v5    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    instance-of v8, v5, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    if-eqz v8, :cond_2

    .line 222
    check-cast v5, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    new-instance v8, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;

    invoke-direct {v8, p0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->setFutureListener(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;)V

    .line 269
    .end local v2    # "clz":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "serviceInfo":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    .end local v7    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    .end local p2    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_1
    :goto_1
    return-void

    .line 216
    .restart local v2    # "clz":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "ret":Ljava/lang/Object;
    .restart local v6    # "serviceInfo":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    .restart local v7    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    .restart local p2    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ret":Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;-><init>()V

    .line 254
    .local v1, "ack":Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
    move-object v0, p2

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->messageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->messageId(Ljava/lang/String;)V

    .line 255
    move-object v0, p2

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->clz(Ljava/lang/String;)V

    .line 256
    move-object v0, p2

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->method(Ljava/lang/String;)V

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "invoke finsh "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    .end local p2    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    invoke-virtual {p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->messageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-eqz v5, :cond_3

    .line 259
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljaf;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Ljaf;->a(Ljava/lang/Object;Z)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->body([B)V

    .line 260
    :cond_3
    invoke-interface {p1, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 261
    .end local v1    # "ack":Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
    :catch_1
    move-exception v3

    .line 262
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
