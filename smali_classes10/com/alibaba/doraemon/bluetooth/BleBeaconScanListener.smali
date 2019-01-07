.class public interface abstract Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;
.super Ljava/lang/Object;
.source "BleBeaconScanListener.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;


# virtual methods
.method public abstract onBeaconRangeChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BleBeacon;",
            ">;)V"
        }
    .end annotation
.end method
