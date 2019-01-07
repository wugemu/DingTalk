.class public Lcom/alibaba/doraemon/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final DEFAULT_WIFI_MAC:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final NETWORKTYPE_2G:I = 0x2

.field public static final NETWORKTYPE_3G:I = 0x3

.field public static final NETWORKTYPE_INVALID:I = 0x0

.field public static final NETWORKTYPE_WAP:I = 0x1

.field public static final NETWORKTYPE_WIFI:I = 0x4

.field private static final NET_2G:Ljava/lang/String; = "2g"

.field private static final NET_3G:Ljava/lang/String; = "3g"

.field private static final NET_4G:Ljava/lang/String; = "4g"

.field private static final OTHER:Ljava/lang/String; = "other"

.field private static final WIFI:Ljava/lang/String; = "wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    if-eqz p0, :cond_1

    .line 160
    const-string/jumbo v4, "connectivity"

    .line 161
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 163
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 166
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 173
    const-string/jumbo v4, "wifi"

    .line 201
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_1
    return-object v4

    .line 167
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v4, "phone"

    .line 177
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 178
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 198
    const-string/jumbo v4, "other"

    goto :goto_1

    .line 184
    :pswitch_0
    const-string/jumbo v4, "2g"

    goto :goto_1

    .line 194
    :pswitch_1
    const-string/jumbo v4, "3g"

    goto :goto_1

    .line 196
    :pswitch_2
    const-string/jumbo v4, "4g"

    goto :goto_1

    .line 201
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string/jumbo v4, "other"

    goto :goto_1

    .line 178
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

.method public static getNetWorkType(Landroid/net/NetworkInfo;I)Ljava/lang/String;
    .locals 9
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p1, "netWorkType"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "mNetWorkType":I
    const/4 v1, 0x0

    .line 55
    .local v1, "mNetWorkTypeName":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 56
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v8, "WIFI"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v4

    .line 71
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 72
    const-string/jumbo v1, "\u65e0\u7f51\u7edc"

    .line 85
    :cond_1
    :goto_1
    return-object v1

    .line 60
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "MOBILE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isFastMobileNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0

    .line 68
    .end local v2    # "proxyHost":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_6
    if-ne v0, v7, :cond_7

    .line 75
    const-string/jumbo v1, "WAP"

    goto :goto_1

    .line 76
    :cond_7
    if-ne v0, v6, :cond_8

    .line 77
    const-string/jumbo v1, "2G"

    goto :goto_1

    .line 78
    :cond_8
    if-ne v0, v5, :cond_9

    .line 80
    const-string/jumbo v1, "3G"

    goto :goto_1

    .line 81
    :cond_9
    if-ne v0, v4, :cond_1

    .line 82
    const-string/jumbo v1, "WIFI"

    goto :goto_1
.end method

.method public static getProvidersName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, ""

    .line 215
    .local v0, "ProvidersName":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 217
    const-string/jumbo v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    :cond_0
    const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 225
    :cond_1
    :goto_0
    return-object v0

    .line 219
    :cond_2
    const-string/jumbo v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    const-string/jumbo v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string/jumbo v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public static getWifiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string/jumbo v1, ""

    .line 230
    .local v1, "mac":Ljava/lang/String;
    const/4 v2, 0x0

    .line 232
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 233
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 237
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "02:00:00:00:00:00"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getWifiMacFromInterface()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_2
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public static getWifiMacFromInterface()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 248
    const-string/jumbo v5, ""

    .line 250
    .local v5, "wifiMac":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "wlan0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 251
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 252
    .local v3, "mac":[B
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v0, v3, v6

    .line 254
    .local v0, "b":B
    const-string/jumbo v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 257
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 259
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 265
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "mac":[B
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_1
    return-object v5

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isFastMobileNetwork(I)Z
    .locals 2
    .param p0, "netWorkType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 128
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 130
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 134
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 136
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 138
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 140
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 142
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 144
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 146
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 150
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static isNetWorkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    const-string/jumbo v3, "connectivity"

    .line 108
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 109
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 110
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const/4 v3, 0x1

    .line 116
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 89
    const-string/jumbo v4, "connectivity"

    .line 90
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 91
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 94
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 102
    :goto_1
    return v3

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method
