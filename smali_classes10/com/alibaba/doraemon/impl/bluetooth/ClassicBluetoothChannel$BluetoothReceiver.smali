.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClassicBluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "BluetoothChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez v1, :cond_1

    .line 215
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 168
    const-string/jumbo v3, "BluetoothChannel"

    const-string/jumbo v4, "device matched"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    const-string/jumbo v3, "BluetoothChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device name"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string/jumbo v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$302(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 177
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 179
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 182
    .local v2, "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    if-eqz v2, :cond_4

    .line 183
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "no device found"

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
