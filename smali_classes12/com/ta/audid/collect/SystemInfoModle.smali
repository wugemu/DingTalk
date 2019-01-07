.class public Lcom/ta/audid/collect/SystemInfoModle;
.super Ljava/lang/Object;
.source "SystemInfoModle.java"


# static fields
.field private static final S10_Build_DISPLAY:Ljava/lang/String; = "S10"

.field private static final S11_Build_ID:Ljava/lang/String; = "S11"

.field private static final S12_Build_TIME:Ljava/lang/String; = "S12"

.field private static final S13_Build_BOARD:Ljava/lang/String; = "S13"

.field private static final S14_Build_DEVICE:Ljava/lang/String; = "S14"

.field private static final S15_Build_MANUFACTURER:Ljava/lang/String; = "S15"

.field private static final S16_Build_PRODUCT:Ljava/lang/String; = "S16"

.field private static final S17_Build_INCREMENTAL:Ljava/lang/String; = "S17"

.field private static final S18_GSM_SM_STATE:Ljava/lang/String; = "S18"

.field private static final S19_GSM_SM_STATE2:Ljava/lang/String; = "S19"

.field private static final S20_KERNEL_QEMU:Ljava/lang/String; = "S20"

.field private static final S21_USB_STATE:Ljava/lang/String; = "S21"

.field private static final S22_WIFI_INTERFACE:Ljava/lang/String; = "S22"

.field private static final S23_BAND_VERSON:Ljava/lang/String; = "S23"

.field private static final S24_YUNOS_UUID:Ljava/lang/String; = "S24"

.field private static final S25_YUNOS_VERSON:Ljava/lang/String; = "S25"

.field private static final S26_NETWORK_BSSD:Ljava/lang/String; = "S26"

.field private static final S27_NETWORK_TYPE:Ljava/lang/String; = "S27"

.field private static final S28_OPERATOR_NAME:Ljava/lang/String; = "S28"

.field private static final S29_OPERATOR_TYPE:Ljava/lang/String; = "S29"

.field private static final S2_EMULATOR:Ljava/lang/String; = "S2"

.field private static final S31_STRONGSEMAPHORE:Ljava/lang/String; = "S31"

.field private static final S32_BLUETOOTH:Ljava/lang/String; = "S32"

.field private static final S33_REMANPOWER:Ljava/lang/String; = "S33"

.field private static final S34_FREEMEMORY:Ljava/lang/String; = "S34"

.field private static final S36_APP_LIST:Ljava/lang/String; = "S36"

.field private static final S3_OS_NAME:Ljava/lang/String; = "S3"

.field private static final S4_BRAND:Ljava/lang/String; = "S4"

.field private static final S5_MODEL:Ljava/lang/String; = "S5"

.field private static final S6_BUILD_VERSON_RELEASE:Ljava/lang/String; = "S6"

.field private static final S7_BUILD_VERSON_SDK:Ljava/lang/String; = "S7"

.field private static final S8_Build_TYPE:Ljava/lang/String; = "S8"

.field private static final S9_Build_TAGS:Ljava/lang/String; = "S9"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemInfoModle(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/ta/audid/collect/SystemInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v1, "S2"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    const-string/jumbo v1, "S3"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getOSName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v1, "S4"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "S5"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "S6"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v1, "S7"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v1, "S8"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "S9"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "S10"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "S11"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "S12"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "S13"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBoard()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "S14"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "S15"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "S16"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "S17"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "S18"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getGsmSimState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "S19"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getGsmSimState2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, "S20"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "S21"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getUsbState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "S22"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getWifiInterface()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "S23"

    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBandVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "S24"

    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getYunOSUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "S25"

    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getYunOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "S26"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v1, "S27"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "S28"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "S29"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v2, "S31"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->isStrongSemaphore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v2, "S32"

    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->isBluetoothEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "S33"

    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "S34"

    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getMemFreeSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "S36"

    invoke-static {}, Lcom/ta/audid/upload/AppsResponse;->getInstance()Lcom/ta/audid/upload/AppsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/upload/AppsResponse;->getAppsList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v0

    .line 59
    :cond_0
    const-string/jumbo v1, "S2"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 95
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method
