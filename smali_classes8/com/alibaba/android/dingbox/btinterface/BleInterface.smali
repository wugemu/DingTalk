.class public interface abstract Lcom/alibaba/android/dingbox/btinterface/BleInterface;
.super Ljava/lang/Object;
.source "BleInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;,
        Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    }
.end annotation


# virtual methods
.method public abstract active(Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract callDevice([B)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract connectWifi(Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectWire(Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceFeature(Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x2710
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handshake(Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetDevice(Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    .annotation runtime Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
        timeout = 0x7530
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;",
            ")",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture",
            "<",
            "Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;",
            ">;"
        }
    .end annotation
.end method
