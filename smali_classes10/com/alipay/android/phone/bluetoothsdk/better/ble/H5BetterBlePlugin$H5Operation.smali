.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;
.super Ljava/lang/Object;
.source "H5BetterBlePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "H5Operation"
.end annotation


# instance fields
.field h5BridgeContext:Liny;

.field h5Event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 1
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 777
    iput-object p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5BridgeContext:Liny;

    .line 778
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
