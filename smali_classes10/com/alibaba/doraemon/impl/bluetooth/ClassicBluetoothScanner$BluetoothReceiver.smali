.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClassicBluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    if-nez v2, :cond_1

    .line 135
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "address":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device found same device"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    .line 118
    .local v3, "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;
    if-eqz v3, :cond_3

    .line 119
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 123
    .end local v3    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device name"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const-string/jumbo v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V

    .line 128
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$102(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Z)Z

    .line 129
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    .line 130
    .restart local v3    # "listener":Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;
    if-eqz v3, :cond_6

    .line 131
    invoke-interface {v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;->onDeviceFindFinsh()V

    goto :goto_2
.end method
