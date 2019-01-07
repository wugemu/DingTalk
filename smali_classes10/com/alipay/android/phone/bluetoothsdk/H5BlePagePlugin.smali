.class public Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;
.super Lipd;
.source "H5BlePagePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lipd;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    const-string/jumbo v1, "h5PageClosed"

    .line 1065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "H5BlePagePlugin"

    const-string/jumbo v3, "h5 page closed"

    invoke-interface {v1, v2, v3}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    .line 34
    .local v0, "betterBleService":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->closeBluetoothAdapter()V

    .line 38
    .end local v0    # "betterBleService":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;
    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 20
    const-string/jumbo v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 21
    return-void
.end method
