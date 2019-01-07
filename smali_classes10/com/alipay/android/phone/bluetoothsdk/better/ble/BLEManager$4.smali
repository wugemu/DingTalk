.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;
.super Ljava/lang/Object;
.source "BLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->disconnectAndClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

.field final synthetic val$bleDevices:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Ljava/util/Collection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    iput-object p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;->val$bleDevices:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;->val$bleDevices:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeAll(Ljava/util/Collection;)V

    .line 550
    return-void
.end method
