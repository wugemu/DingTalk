.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.super Ljava/lang/Object;
.source "BleResult.java"


# instance fields
.field public error:[Ljava/lang/String;

.field public obj:Ljava/lang/Object;

.field public success:Z

.field public syncReturn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "syncReturn"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 18
    iput-boolean p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 19
    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "syncReturn"    # Z
    .param p3, "error"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 23
    iput-boolean p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 24
    iput-object p3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
