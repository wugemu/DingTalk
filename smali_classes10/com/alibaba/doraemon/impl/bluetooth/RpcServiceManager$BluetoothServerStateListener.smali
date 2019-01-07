.class public Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;
.super Ljava/lang/Object;
.source "RpcServiceManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothServerStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothListenerFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
    .locals 5
    .param p1, "server"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 189
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-eqz v1, :cond_1

    .line 190
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

    .line 191
    .local v0, "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->getUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;->onDeviceListenerFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    :cond_1
    return-void
.end method

.method public onBluetoothServerStoped(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
    .locals 4
    .param p1, "server"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 177
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;>;"
    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 179
    .local v0, "channel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 180
    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->stop()V

    goto :goto_0

    .line 184
    .end local v0    # "channel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :cond_0
    return-void
.end method

.method public onBluetoothSocketConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V
    .locals 4
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;>;"
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "channels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v0    # "channels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;>;"
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 168
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 169
    .local v1, "toStopChannels":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 170
    invoke-interface {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->stop()V

    .line 172
    .end local v1    # "toStopChannels":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :cond_2
    return-void
.end method
