.class Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast$1;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "IBeaconBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->broadcast(Lorg/altbeacon/beacon/Beacon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

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
    .line 62
    const-string/jumbo v0, "IBeaconBroadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Advertisement start failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "settingsInEffect"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 68
    return-void
.end method
