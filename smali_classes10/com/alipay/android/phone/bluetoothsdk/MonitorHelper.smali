.class public Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;
.super Ljava/lang/Object;
.source "MonitorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
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

.method public static logBleKeepTime(J)V
    .locals 0
    .param p0, "persistTime"    # J

    .prologue
    .line 54
    return-void
.end method

.method public static logBluetoothEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public static logCloseBLEAdapter()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static logConnectBLE()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public static logConnectBLEErr(Ljava/lang/String;)V
    .locals 0
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public static logConnectBLESucc()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public static logConnectBLETime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 62
    return-void
.end method

.method public static logDisconnectBLE()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public static logDiscoverServiceTime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 118
    return-void
.end method

.method public static logFirstScanTime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 58
    return-void
.end method

.method public static logGetBeacons()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public static logKeepConnectTime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 66
    return-void
.end method

.method public static logNotifyBLE()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public static logNotifyBLEErr(Ljava/lang/String;)V
    .locals 0
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public static logOldH5Funtion()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public static logOnDisconnectBLE()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public static logOpenBLEAdapter()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public static logReadBLEErr(Ljava/lang/String;)V
    .locals 0
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public static logReadDataBLE()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public static logStartBLEScan()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public static logStartBeaconDiscovery()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public static logStopBLEScan()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public static logStopBeaconDiscovery()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public static logWriteBLEErr(Ljava/lang/String;)V
    .locals 0
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public static logWriteBLETime(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 70
    return-void
.end method

.method public static logWriteDataBLE()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
