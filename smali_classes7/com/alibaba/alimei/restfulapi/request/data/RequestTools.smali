.class abstract Lcom/alibaba/alimei/restfulapi/request/data/RequestTools;
.super Ljava/lang/Object;
.source "RequestTools.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "en"

    .line 75
    .local v0, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string/jumbo v0, "zh-Hans"

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v0, "zh-Hant"

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string/jumbo v2, "connectivity"

    .line 49
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 50
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 53
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 66
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :cond_0
    :pswitch_0
    const-string/jumbo v2, "wifi"

    :goto_0
    return-object v2

    .line 56
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :pswitch_1
    const-string/jumbo v2, "wifi"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string/jumbo v2, "3G"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string/jumbo v2, "2G"

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getProvidersName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string/jumbo v1, "null"

    .line 24
    .local v1, "ProvidersName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "IMSI":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 26
    const-string/jumbo v3, "null"

    .line 39
    .end local v0    # "IMSI":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 27
    .restart local v0    # "IMSI":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    :cond_1
    const-string/jumbo v1, "CMCC"

    .end local v0    # "IMSI":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v1

    .line 39
    goto :goto_0

    .line 29
    .restart local v0    # "IMSI":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 30
    const-string/jumbo v1, "CUCC"

    goto :goto_1

    .line 31
    :cond_4
    const-string/jumbo v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    const-string/jumbo v1, "CTCC"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    .end local v0    # "IMSI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    const-string/jumbo v3, " get ProvidersName error->"

    invoke-static {v3, v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
