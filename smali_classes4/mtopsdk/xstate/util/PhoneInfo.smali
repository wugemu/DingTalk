.class public Lmtopsdk/xstate/util/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field private static final IMEI:Ljava/lang/String; = "mtopsdk_imei"

.field private static final IMSI:Ljava/lang/String; = "mtopsdk_imsi"

.field private static final MACADDRESS:Ljava/lang/String; = "mtopsdk_mac_address"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.PhoneInfo"

.field private static storeManager:Lmtopsdk/common/util/ConfigStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    sput-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateImei()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x6

    .line 35
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v2, "imei":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 40
    .local v6, "time":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "currentTime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v3, "model":Ljava/lang/StringBuffer;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v5, v12, :cond_0

    .line 46
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "currentTime":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/StringBuffer;
    .end local v6    # "time":J
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "mtopsdk.PhoneInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[generateImei] error --->"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 48
    .restart local v0    # "currentTime":Ljava/lang/String;
    .restart local v3    # "model":Ljava/lang/StringBuffer;
    .restart local v6    # "time":J
    :cond_0
    const/4 v5, 0x0

    const/4 v10, 0x6

    :try_start_1
    invoke-virtual {v3, v5, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 51
    .local v4, "random":Ljava/util/Random;
    const-wide/16 v8, 0x0

    .line 52
    .local v8, "tmp":J
    :goto_2
    const-wide/16 v10, 0x1000

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    .line 53
    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    goto :goto_2

    .line 56
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "androidId":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 234
    const/4 v2, 0x0

    .line 241
    :goto_0
    return-object v2

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 241
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.PhoneInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getAndroidId]error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string/jumbo v7, ""

    .line 77
    .local v7, "imei":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v1, "MtopConfigStore"

    const-string/jumbo v2, "PHONE_INFO_STORE."

    const-string/jumbo v3, "mtopsdk_imei"

    invoke-virtual {v0, p0, v1, v2, v3}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 99
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 83
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->generateImei()Ljava/lang/String;

    move-result-object v7

    .line 87
    :cond_1
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 89
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 93
    :cond_2
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v2, "MtopConfigStore"

    const-string/jumbo v3, "PHONE_INFO_STORE."

    const-string/jumbo v4, "mtopsdk_imei"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    if-nez v7, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 96
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "mtopsdk.PhoneInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getImei] error ---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 99
    goto/16 :goto_0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string/jumbo v7, ""

    .line 112
    .local v7, "imsi":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v1, "MtopConfigStore"

    const-string/jumbo v2, "PHONE_INFO_STORE."

    const-string/jumbo v3, "mtopsdk_imsi"

    invoke-virtual {v0, p0, v1, v2, v3}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 133
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 118
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->generateImei()Ljava/lang/String;

    move-result-object v7

    .line 123
    :cond_1
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 125
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 128
    :cond_2
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v2, "MtopConfigStore"

    const-string/jumbo v3, "PHONE_INFO_STORE."

    const-string/jumbo v4, "mtopsdk_imsi"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :goto_2
    move-object v0, v7

    .line 133
    goto :goto_0

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "mtopsdk.PhoneInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getImsi]error ---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    if-nez p0, :cond_1

    .line 254
    const-string/jumbo v9, ""

    .line 278
    :cond_0
    :goto_0
    return-object v9

    .line 257
    :cond_1
    const-string/jumbo v9, ""

    .line 259
    .local v9, "wifiaddr":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v1, "MtopConfigStore"

    const-string/jumbo v2, "PHONE_INFO_STORE."

    const-string/jumbo v3, "mtopsdk_mac_address"

    invoke-virtual {v0, p0, v1, v2, v3}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 260
    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v9, v1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v9, v0

    goto :goto_0

    .line 264
    :cond_2
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 265
    .local v8, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v8, :cond_3

    .line 266
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 267
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_3

    .line 268
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    .line 271
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    :cond_3
    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lmtopsdk/xstate/util/PhoneInfo;->storeManager:Lmtopsdk/common/util/ConfigStoreManager;

    const-string/jumbo v2, "MtopConfigStore"

    const-string/jumbo v3, "PHONE_INFO_STORE."

    const-string/jumbo v4, "mtopsdk_mac_address"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v8    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v6

    .line 276
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "mtopsdk.PhoneInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getLocalMacAddress]error ---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOriginalImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "imei":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 175
    const/4 v3, 0x0

    .line 185
    :goto_0
    return-object v3

    .line 178
    :cond_0
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 179
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    move-object v3, v1

    .line 185
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.PhoneInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getOriginalImei]error ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "imsi":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 197
    const/4 v3, 0x0

    .line 207
    :goto_0
    return-object v3

    .line 200
    :cond_0
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 201
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    move-object v3, v1

    .line 207
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.PhoneInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getOriginalImsi]error ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getPhoneBaseInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string/jumbo v0, ""

    .line 147
    .local v0, "baseInfo":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "Android"

    .line 148
    .local v5, "ostype":Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 149
    .local v4, "osrelease":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 150
    .local v2, "manufacturer":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 152
    .local v3, "model":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MTOPSDK/2.1.0.8"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, "phoneBaseInfo":Ljava/lang/StringBuilder;
    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    .end local v0    # "baseInfo":Ljava/lang/String;
    .end local v2    # "manufacturer":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v4    # "osrelease":Ljava/lang/String;
    .end local v5    # "ostype":Ljava/lang/String;
    .end local v6    # "phoneBaseInfo":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "baseInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[getPhoneBaseInfo] error ---"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 9

    .prologue
    .line 214
    const/4 v4, 0x0

    .line 217
    .local v4, "serialnum":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 218
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 219
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ro.serialno"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "unknown"

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "mtopsdk.PhoneInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[getSerialNum]error ---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
