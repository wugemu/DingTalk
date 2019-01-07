.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Lorg/altbeacon/beacon/RangeNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Beacon;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
