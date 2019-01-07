.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleBluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleGattClientCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p2, "x1"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    return-void
.end method

.method private getBleStateName(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    const-string/jumbo v0, "STATE_DISCONNECTED"

    goto :goto_0

    .line 186
    :pswitch_1
    const-string/jumbo v0, "STATE_CONNECTING"

    goto :goto_0

    .line 188
    :pswitch_2
    const-string/jumbo v0, "STATE_CONNECTED"

    goto :goto_0

    .line 190
    :pswitch_3
    const-string/jumbo v0, "STATE_DISCONNECTING"

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 345
    :cond_0
    const-string/jumbo v3, "BleBluetoothChannel"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "changed characteristic interrupt, isStop: "

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string/jumbo v6, "; newGatt:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v6

    if-eq v6, p1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 345
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 352
    .local v0, "bytes":[B
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    .line 353
    :cond_3
    const-string/jumbo v1, "BleBluetoothChannel"

    const-string/jumbo v2, "characteristic changed illegal data"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;[B)V

    .line 358
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_1
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 303
    :cond_0
    const-string/jumbo v3, "BleBluetoothChannel"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "read characteristic interrupt, isStop: "

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string/jumbo v6, "; newGatt:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v6

    if-eq v6, p1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 303
    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 308
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2202(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Z)Z

    .line 311
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 314
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    .line 316
    :cond_3
    const-string/jumbo v1, "BleBluetoothChannel"

    const-string/jumbo v2, "characteristic read illegal data"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;[B)V

    .line 321
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_1
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 327
    :cond_0
    const-string/jumbo v2, "BleBluetoothChannel"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "write characteristic interrupt, isStop: "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "; newGatt:"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    if-eq v5, p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 327
    goto :goto_0

    .line 331
    :cond_2
    const-string/jumbo v2, "BleBluetoothChannel"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "write characteristic, status="

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2202(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Z)Z

    .line 335
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCharacteristicOperationExecuting = false ++++ onCharacteristicWrite"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_1

    .line 338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 198
    const-string/jumbo v0, "BleBluetoothChannel"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "connection state change, status:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, ";  newState:"

    aput-object v2, v1, v5

    invoke-direct {p0, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->getBleStateName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p2, :cond_4

    .line 205
    if-ne p3, v5, :cond_2

    .line 206
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I

    .line 207
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/16 v1, 0x2800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$602(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 213
    :cond_2
    if-nez p3, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 215
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v7}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I

    .line 219
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;ILjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 225
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I

    .line 226
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;ILjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$508(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    .line 234
    const-string/jumbo v0, "BleBluetoothChannel"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "connect fail, error count:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v0

    if-le v0, v6, :cond_6

    .line 237
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v1, "max error count"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I

    .line 239
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;ILjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto/16 :goto_0

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0, v7}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto/16 :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 364
    :cond_0
    const-string/jumbo v2, "BleBluetoothChannel"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "descriptor write characteristic interrupt, isStop: "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string/jumbo v5, "; newGatt:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    if-eq v5, p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 364
    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2202(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Z)Z

    .line 369
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 252
    const-string/jumbo v4, "BleBluetoothChannel"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "service discovered, status: "

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v6, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 255
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 256
    :cond_0
    const-string/jumbo v4, "BleBluetoothChannel"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "service discovered interrupt, isStop: "

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    const-string/jumbo v6, "; newGatt:"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v6

    if-eq v6, p1, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 256
    goto :goto_0

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 263
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_7

    .line 264
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1702(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 266
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-nez v3, :cond_3

    .line 267
    const-string/jumbo v2, "BleBluetoothChannel"

    const-string/jumbo v3, "can not get the customCharacteristic characteristic"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    .line 291
    .local v0, "result":Z
    :goto_2
    if-eqz v0, :cond_8

    .line 292
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2, v8}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V

    goto :goto_1

    .line 270
    .end local v0    # "result":Z
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, p1, v4, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 271
    const/4 v0, 0x1

    .restart local v0    # "result":Z
    goto :goto_2

    .line 275
    .end local v0    # "result":Z
    :cond_4
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getWriteCharacteristicUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1902(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 276
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getReadCharacteristicUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2002(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 278
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-nez v3, :cond_6

    .line 279
    :cond_5
    const-string/jumbo v2, "BleBluetoothChannel"

    const-string/jumbo v3, "can not get the read/write characteristic"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_2

    .line 282
    .end local v0    # "result":Z
    :cond_6
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, p1, v4, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 283
    const/4 v0, 0x1

    .restart local v0    # "result":Z
    goto :goto_2

    .line 287
    .end local v0    # "result":Z
    :cond_7
    const/4 v0, 0x0

    .line 288
    .restart local v0    # "result":Z
    const-string/jumbo v2, "BleBluetoothChannel"

    const-string/jumbo v3, "not found uuid from gatt"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_8
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V

    .line 295
    const-string/jumbo v2, "BleBluetoothChannel"

    const-string/jumbo v3, " discovered close"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    goto/16 :goto_1
.end method
