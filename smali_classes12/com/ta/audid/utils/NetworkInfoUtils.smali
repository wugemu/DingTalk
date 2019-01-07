.class public Lcom/ta/audid/utils/NetworkInfoUtils;
.super Ljava/lang/Object;
.source "NetworkInfoUtils.java"


# static fields
.field public static final NETWORK_CLASS_2_G:Ljava/lang/String; = "2G"

.field public static final NETWORK_CLASS_3_G:Ljava/lang/String; = "3G"

.field public static final NETWORK_CLASS_4_G:Ljava/lang/String; = "4G"

.field public static final NETWORK_CLASS_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_CLASS_WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static arrayOfString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertIntToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccess(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 134
    :try_start_0
    invoke-static {p0}, Lcom/ta/audid/utils/NetworkInfoUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/ta/audid/utils/NetworkInfoUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "2G/3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 148
    .restart local v0    # "networkStatus":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Unknown"

    goto :goto_0

    .line 151
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method private static getNetworkClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 72
    const-string/jumbo v0, "Unknown"

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    .line 68
    :pswitch_1
    const-string/jumbo v0, "3G"

    goto :goto_0

    .line 70
    :pswitch_2
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 108
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "Unknown"

    aput-object v4, v3, v5

    .line 110
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    .line 129
    :goto_0
    return-object v3

    .line 112
    :cond_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 113
    .local v0, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 114
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "Unknown"

    aput-object v4, v3, v5

    .line 115
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 118
    .local v2, "nInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v6, v3, :cond_3

    .line 120
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "Wi-Fi"

    aput-object v4, v3, v5

    .line 129
    :cond_2
    :goto_1
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 122
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "2G/3G"

    aput-object v4, v3, v5

    .line 123
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_1

    .line 126
    :cond_4
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "Unknown"

    aput-object v4, v3, v5

    .line 127
    sget-object v3, Lcom/ta/audid/utils/NetworkInfoUtils;->arrayOfString:[Ljava/lang/String;

    const-string/jumbo v4, "Unknown"

    aput-object v4, v3, v6

    goto :goto_1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string/jumbo v3, "Unknown"

    .line 48
    :goto_0
    return-object v3

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 29
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const-string/jumbo v3, "Unknown"

    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 34
    .local v1, "nInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 35
    const-string/jumbo v3, "Unknown"

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 39
    const-string/jumbo v3, "Wi-Fi"

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Lcom/ta/audid/utils/NetworkInfoUtils;->getNetworkClass(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v0    # "cManager":Landroid/net/ConnectivityManager;
    .end local v1    # "nInfo":Landroid/net/NetworkInfo;
    .end local v2    # "pManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 48
    :cond_4
    const-string/jumbo v3, "Unknown"

    goto :goto_0
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 156
    if-eqz p0, :cond_0

    .line 158
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 159
    .local v0, "wifiManage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 160
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/ta/audid/utils/NetworkInfoUtils;->convertIntToIp(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 168
    .end local v0    # "wifiManage":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isConnectInternet(Landroid/content/Context;)Z
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 83
    if-eqz p0, :cond_1

    .line 85
    :try_start_0
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, "conManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 91
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 103
    .end local v0    # "conManager":Landroid/net/ConnectivityManager;
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/ta/audid/utils/NetworkInfoUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string/jumbo v2, "Wi-Fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 185
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
