.class Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BleServerBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->broadcast(Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

.field final synthetic val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 3
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v0, "BleServerBroadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Advertisement start failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;->onFailed(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 1
    .param p1, "settingsInEffect"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;->val$advertisingCallback:Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;->onSuccess()V

    .line 78
    :cond_0
    return-void
.end method
