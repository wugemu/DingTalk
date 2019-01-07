.class public Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
.super Lckb;
.source "DoorGuardInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;
    }
.end annotation


# static fields
.field public static final ACTION_ENTER_DOOR_RANGE_UPDATE:Ljava/lang/String; = "com.alibaba.dingtalk.ACTION_ENTER_DOOR_RANGE_UPDATE"

.field public static final ACTION_SMART_DEVICE_OPEN_DOOR:Ljava/lang/String; = "com.alibaba.dingtalk.ACTION_SMART_DEVICE_OPEN_DOOR"

.field public static final ACTION_SMART_DEVICE_UPDATE:Ljava/lang/String; = "com.alibaba.dingtalk.ACTION_SMART_DEVICE_UPDATE"

.field public static final BLE_ACTION_MODE_PRE_OFFLINE:I = 0x1

.field public static final BLE_ACTION_MODE_PRE_ONLINE:I = 0x2

.field public static final CONN_TYPE_BLE:Ljava/lang/String; = "ble"

.field public static final CONN_TYPE_LAN:Ljava/lang/String; = "lan"

.field public static final CONN_TYPE_QRCODE:Ljava/lang/String; = "qrcode"

.field public static final PARAMS_BLE_BEACON:Ljava/lang/String; = "ble_beacon"

.field public static final PARAMS_MAC_ADDRESS:Ljava/lang/String; = "mac_address"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    return-object v0
.end method


# virtual methods
.method public addWdsDevice(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 182
    return-void
.end method

.method public findDevicesByCorpId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllFoundDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientMac(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public getDeviceDynamicPwd(Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcma;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public getDeviceModelByDeviceId(IJ)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "deviceId"    # J

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevicePwd(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 202
    return-void
.end method

.method public getEnterRangeDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFoundDeviceCount()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getUnactiveDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 47
    return-void
.end method

.method public isSmartDeviceFound()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onDeviceBindFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method

.method public onDeviceBindSuccess(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onLogin()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onLogout()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method public parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .prologue
    .line 124
    return-void
.end method

.method public registerDeviceBeaconReceiver(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "receiver":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    return-void
.end method

.method public removeBindListener(Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 0
    .param p1, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .prologue
    .line 132
    return-void
.end method

.method public resetWifiConfig(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public resetWifiConfig(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .prologue
    .line 106
    return-void
.end method

.method public startBeaconService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    return-void
.end method

.method public startBeaconService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public startBindDevice(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public startBindDevice(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .prologue
    .line 101
    return-void
.end method

.method public startDoorDiagnostics(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    return-void
.end method

.method public stopBeaconService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    return-void
.end method

.method public unBindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;
    .param p4, "deviceUid"    # J
    .param p6, "listener"    # Lcma;

    .prologue
    .line 139
    return-void
.end method

.method public unregisterDeviceBeaconReceiver(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "receiver":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    return-void
.end method
