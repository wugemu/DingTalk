.class public interface abstract Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
.super Ljava/lang/Object;
.source "BluetoothMagician.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ARTIFACT:Ljava/lang/String; = "BLUETOOTH"


# virtual methods
.method public abstract addBuletoothName2Cache(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract generateBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
.end method

.method public abstract getBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
.end method

.method public abstract getBluetoothNameFromeCache(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract quickScan()V
.end method

.method public abstract releaseClient(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract releaseClient(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)V"
        }
    .end annotation
.end method

.method public abstract scanBleBeaconAdvertising(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V
.end method

.method public abstract scanBleServer(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
.end method

.method public abstract scanBluetoothDevice(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
.end method

.method public abstract scanIBeaconAdvertising(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BeaconScanListener;)V
.end method

.method public abstract setBleBeaconScanBackgroundMode(Z)V
.end method

.method public abstract setBluetoothName(Ljava/lang/String;)V
.end method

.method public abstract setScanPeriod(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;)V
.end method

.method public abstract startBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V
.end method

.method public abstract startBleServerAdvertising(Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V
.end method

.method public abstract startIBeaconAdvertising(Ljava/lang/String;III)V
.end method

.method public abstract startIBeaconAdvertising(Lorg/altbeacon/beacon/Beacon;)V
.end method

.method public abstract startService(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V
.end method

.method public abstract stopBleServerAdvertising()V
.end method

.method public abstract stopIBeaconAdvertising()V
.end method

.method public abstract stopScanBleBeacon(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V
.end method

.method public abstract stopScanBleServer(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
.end method

.method public abstract stopScanBluetoothDevice(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
.end method

.method public abstract stopScanIBeacon(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BeaconScanListener;)V
.end method

.method public abstract stopService(Ljava/lang/String;Ljava/lang/Class;)Z
.end method

.method public abstract supportAdvertise()Z
.end method

.method public abstract switchScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V
.end method

.method public abstract tryUnbindBeaconServiceIfNotWork()V
.end method
