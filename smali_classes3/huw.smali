.class public final Lhuw;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    sput-object v3, Lhuw;->a:Ljava/lang/String;

    .line 71
    sput-object v3, Lhuw;->b:Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lhuw;->c:[Ljava/lang/String;

    .line 227
    sput-object v3, Lhuw;->d:Ljava/lang/String;

    .line 229
    sput-object v3, Lhuw;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 39
    sget-object v6, Lhuw;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 40
    sget-object v6, Lhuw;->a:Ljava/lang/String;

    .line 67
    .local v4, "str1":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 42
    .end local v4    # "str1":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "/proc/cpuinfo"

    .line 44
    .restart local v4    # "str1":Ljava/lang/String;
    const/4 v0, 0x0

    .line 45
    .local v0, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 47
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v0    # "fr":Ljava/io/FileReader;
    .local v1, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "str2":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 50
    const-string/jumbo v6, "Hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 52
    sput-object v6, Lhuw;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    .line 59
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 67
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v5    # "str2":Ljava/lang/String;
    .restart local v0    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 66
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "str2":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v5    # "str2":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 58
    :goto_2
    if-eqz v0, :cond_4

    .line 59
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 61
    :cond_4
    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 66
    :catch_3
    move-exception v6

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v6

    .line 58
    :goto_3
    if-eqz v0, :cond_5

    .line 59
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 61
    :cond_5
    if-eqz v2, :cond_6

    .line 62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 65
    :cond_6
    :goto_4
    throw v6

    :catch_4
    move-exception v7

    goto :goto_4

    .line 57
    .end local v0    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    :try_start_0
    sget-object v1, Lhuw;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lhuw;->b:Ljava/lang/String;

    .line 89
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const-string/jumbo v1, "phone"

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 85
    sput-object v1, Lhuw;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 271
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 272
    .local v0, "bInt":[B
    move v1, p0

    .line 273
    .local v1, "value":I
    const/4 v2, 0x3

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 274
    shr-int/lit8 v1, v1, 0x8

    .line 275
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 276
    shr-int/lit8 v1, v1, 0x8

    .line 277
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 278
    shr-int/lit8 v1, v1, 0x8

    .line 279
    const/4 v2, 0x0

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 280
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "get country error "

    invoke-static {v1, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 106
    if-nez p0, :cond_0

    .line 107
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    .line 134
    :goto_0
    return-object v3

    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_1
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 116
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 119
    .local v1, "nInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_3

    .line 120
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 124
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Wi-Fi"

    aput-object v5, v3, v4

    .line 125
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_5

    .line 127
    sget-object v4, Lhuw;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 1143
    packed-switch v3, :pswitch_data_0

    .line 1163
    const-string/jumbo v3, "Unknown"

    .line 127
    :goto_1
    aput-object v3, v4, v5

    .line 128
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 129
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto :goto_0

    .line 1149
    :pswitch_0
    const-string/jumbo v3, "2G"

    goto :goto_1

    .line 1159
    :pswitch_1
    const-string/jumbo v3, "3G"

    goto :goto_1

    .line 1161
    :pswitch_2
    const-string/jumbo v3, "4G"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "cManager":Landroid/net/ConnectivityManager;
    .end local v1    # "nInfo":Landroid/net/NetworkInfo;
    .end local v2    # "pManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 134
    :cond_5
    sget-object v3, Lhuw;->c:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1143
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

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "get country error "

    invoke-static {v1, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "get utdid error "

    invoke-static {v1, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 201
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 203
    .local v3, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 204
    .local v2, "screenHeight":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 208
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    :goto_0
    return-object v4

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "get resolution error"

    invoke-static {v4, v1}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    sget-object v1, Lhuw;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lhuw;->d:Ljava/lang/String;

    .line 253
    :goto_0
    return-object v1

    .line 240
    :cond_0
    if-eqz p0, :cond_1

    .line 242
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 244
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lhuw;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    sget-object v1, Lhuw;->d:Ljava/lang/String;

    invoke-static {v1}, Lhvb;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-static {}, Lhuw;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lhuw;->d:Ljava/lang/String;

    .line 253
    :cond_2
    sget-object v1, Lhuw;->d:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lhuw;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lhuw;->e:Ljava/lang/String;

    .line 267
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-static {}, Lhuw;->f()Ljava/lang/String;

    move-result-object v0

    .line 267
    sput-object v0, Lhuw;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 14

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 286
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 287
    .local v6, "t2":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 288
    .local v7, "t3":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 289
    .local v8, "t4":I
    invoke-static {v5}, Lhuw;->a(I)[B

    move-result-object v0

    .line 290
    .local v0, "b1":[B
    invoke-static {v6}, Lhuw;->a(I)[B

    move-result-object v1

    .line 291
    .local v1, "b2":[B
    invoke-static {v7}, Lhuw;->a(I)[B

    move-result-object v2

    .line 292
    .local v2, "b3":[B
    invoke-static {v8}, Lhuw;->a(I)[B

    move-result-object v3

    .line 293
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 294
    .local v4, "bUniqueID":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v0, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x4

    invoke-static {v1, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x4

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x4

    invoke-static {v3, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-static {v4}, Lhuu;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 301
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .end local v2    # "b3":[B
    .end local v3    # "b4":[B
    .end local v4    # "bUniqueID":[B
    .end local v6    # "t2":I
    .end local v7    # "t3":I
    .end local v8    # "t4":I
    :goto_0
    return-object v9

    :catch_0
    move-exception v9

    const/4 v9, 0x0

    goto :goto_0
.end method
