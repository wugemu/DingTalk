.class Lcom/ta/audid/collect/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBandVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "gsm.version.baseband"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionIncremental()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getGsmSimState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "gsm.sim.state"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGsmSimState2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "gsm.sim.state.2"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKernelQemu()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "ro.kernel.qemu"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->isYunOSPhoneSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "yp"

    .line 34
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->isYunOSTvSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string/jumbo v0, "yt"

    goto :goto_0

    .line 34
    :cond_1
    const-string/jumbo v0, "a"

    goto :goto_0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "sys.usb.state"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiInterface()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 16
    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "goldfish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "sdk"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 24
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
