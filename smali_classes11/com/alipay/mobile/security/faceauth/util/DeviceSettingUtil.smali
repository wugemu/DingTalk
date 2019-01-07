.class public Lcom/alipay/mobile/security/faceauth/util/DeviceSettingUtil;
.super Ljava/lang/Object;
.source "DeviceSettingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPropertyDeviceSetting([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 6
    .param p0, "deviceSettings"    # [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, "deviceSetting":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    if-eqz p0, :cond_0

    .line 17
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "androidApiLevel":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p0, v3

    .line 20
    .local v2, "item":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMinApiLevel()I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMaxApiLevel()I

    move-result v5

    if-gt v0, v5, :cond_2

    .line 21
    move-object v1, v2

    .line 27
    .end local v0    # "androidApiLevel":I
    .end local v2    # "item":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    :cond_0
    if-nez v1, :cond_1

    .line 28
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .end local v1    # "deviceSetting":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    .line 31
    .restart local v1    # "deviceSetting":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    :cond_1
    return-object v1

    .line 18
    .restart local v0    # "androidApiLevel":I
    .restart local v2    # "item":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
