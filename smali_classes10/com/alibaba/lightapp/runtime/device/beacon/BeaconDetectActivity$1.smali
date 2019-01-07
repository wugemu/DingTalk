.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 89
    return-void
.end method

.method public final didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 92
    return-void
.end method

.method public final onBeaconRangeChange(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->b(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->c(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lhgd$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->c(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lhgd$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lhgd$b;->a(Ljava/util/Collection;)V

    .line 86
    :cond_0
    return-void
.end method
