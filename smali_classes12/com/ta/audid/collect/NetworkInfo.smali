.class public Lcom/ta/audid/collect/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBssid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 21
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 22
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 23
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getPhoneNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 34
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getPhoneOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const-string/jumbo v1, ""

    .line 52
    :goto_0
    return-object v1

    .line 48
    :cond_0
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 50
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getPhoneOperatorType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string/jumbo v1, ""

    .line 65
    :goto_0
    return-object v1

    .line 61
    :cond_0
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getRssi(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, -0x32

    const/16 v5, -0x46

    const/16 v4, -0x50

    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string/jumbo v3, ""

    .line 96
    :goto_0
    return-object v3

    .line 74
    :cond_0
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 75
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 77
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 79
    .local v0, "level":I
    if-gtz v0, :cond_1

    if-lt v0, v6, :cond_1

    .line 81
    const-string/jumbo v3, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :cond_1
    if-ge v0, v6, :cond_2

    if-lt v0, v5, :cond_2

    .line 84
    const-string/jumbo v3, "2"

    goto :goto_0

    .line 85
    :cond_2
    if-ge v0, v5, :cond_3

    if-lt v0, v4, :cond_3

    .line 87
    const-string/jumbo v3, "3"

    goto :goto_0

    .line 88
    :cond_3
    if-ge v0, v4, :cond_4

    const/16 v3, -0x64

    if-lt v0, v3, :cond_4

    .line 90
    const-string/jumbo v3, "4"

    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v3, "5"

    goto :goto_0

    .line 96
    .end local v0    # "level":I
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static isBluetoothEnable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 125
    :try_start_0
    const-string/jumbo v3, "bluetooth"

    .line 126
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 127
    .local v1, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 128
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isStrongSemaphore(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 105
    :cond_1
    :try_start_0
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 106
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 108
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    .local v1, "level":I
    if-gtz v1, :cond_0

    const/16 v6, -0x46

    if-lt v1, v6, :cond_0

    move v4, v5

    .line 111
    goto :goto_0

    .line 113
    .end local v1    # "level":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v6, v5}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
