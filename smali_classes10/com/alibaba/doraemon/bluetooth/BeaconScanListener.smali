.class public interface abstract Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;
.super Ljava/lang/Object;
.source "BeaconScanListener.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;


# virtual methods
.method public abstract onBeaconRangeChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation
.end method
