.class Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "BluetoothServer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GattServerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCharacteristicReadRequest  device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    .line 170
    .local v0, "bleChannel":Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCharacteristicWriteRequest  device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    .line 179
    .local v0, "bleChannel":Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 180
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 181
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectionStateChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new_status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 151
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;)V

    .line 152
    .local v0, "bleChannel":Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;->onBluetoothSocketConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 163
    .end local v0    # "bleChannel":Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    if-nez p3, :cond_1

    .line 157
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    .line 158
    .restart local v0    # "bleChannel":Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
