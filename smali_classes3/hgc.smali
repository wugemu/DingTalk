.class public final Lhgc;
.super Ljava/lang/Object;
.source "LightRegionBootstrap.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

.field d:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/util/List;)V
    .locals 4
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhgc;->b:Z

    .line 67
    iput-object p1, p0, Lhgc;->d:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhgc;->a:Ljava/util/List;

    .line 70
    iget-object v1, p0, Lhgc;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iput-object v1, p0, Lhgc;->c:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 74
    iget-object v1, p0, Lhgc;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 75
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    iget-object v2, p0, Lhgc;->c:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v3, p0, Lhgc;->d:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->startBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_0

    .line 77
    .end local v0    # "region":Lorg/altbeacon/beacon/Region;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    iget-boolean v1, p0, Lhgc;->b:Z

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhgc;->b:Z

    .line 103
    iget-object v1, p0, Lhgc;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 104
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    iget-object v2, p0, Lhgc;->c:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v3, p0, Lhgc;->d:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_0
.end method
