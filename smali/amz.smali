.class public final Lamz;
.super Ljava/lang/Object;
.source "PhoneInfoUtils.java"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lamz;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 22
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 23
    .local v6, "t2":I
    sget-object v9, Lamz;->a:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 24
    .local v7, "t3":I
    sget-object v9, Lamz;->a:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 25
    .local v8, "t4":I
    invoke-static {v5}, Lamt;->a(I)[B

    move-result-object v0

    .line 26
    .local v0, "b1":[B
    invoke-static {v6}, Lamt;->a(I)[B

    move-result-object v1

    .line 27
    .local v1, "b2":[B
    invoke-static {v7}, Lamt;->a(I)[B

    move-result-object v2

    .line 28
    .local v2, "b3":[B
    invoke-static {v8}, Lamt;->a(I)[B

    move-result-object v3

    .line 29
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 30
    .local v4, "bUniqueID":[B
    invoke-static {v0, v14, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {v1, v14, v4, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    const/16 v9, 0x8

    invoke-static {v2, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/16 v9, 0xc

    invoke-static {v3, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    const/4 v9, 0x2

    invoke-static {v4, v9}, Lamm;->b([BI)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "imei":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 41
    :try_start_0
    const-string/jumbo v7, "UTCommon"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 43
    .local v5, "lSP":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "_ie"

    const-string/jumbo v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "lIE":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 44
    if-nez v7, :cond_0

    .line 45
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lamm;->a([BI)[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2205
    .local v4, "lIMEI":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 47
    if-nez v7, :cond_0

    .line 79
    .end local v3    # "lIE":Ljava/lang/String;
    .end local v4    # "lIMEI":Ljava/lang/String;
    .end local v5    # "lSP":Landroid/content/SharedPreferences;
    :goto_0
    return-object v4

    :catch_0
    move-exception v7

    .line 55
    :cond_0
    :try_start_1
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 57
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    .line 58
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 3205
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 64
    if-eqz v7, :cond_2

    .line 65
    invoke-static {}, Lamz;->a()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_2
    if-eqz p0, :cond_3

    .line 69
    :try_start_2
    const-string/jumbo v7, "UTCommon"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 71
    .restart local v5    # "lSP":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 72
    .local v2, "lE":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "_ie"

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lamm;->c([BI)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "lE":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "lSP":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    move-object v4, v1

    .line 79
    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 86
    :try_start_0
    const-string/jumbo v7, "UTCommon"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 88
    .local v5, "lSP":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "_is"

    const-string/jumbo v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4205
    .local v4, "lIS":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 89
    if-nez v7, :cond_0

    .line 90
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lamm;->a([BI)[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5205
    .local v3, "lIMSI":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 92
    if-nez v7, :cond_0

    .line 124
    .end local v3    # "lIMSI":Ljava/lang/String;
    .end local v4    # "lIS":Ljava/lang/String;
    .end local v5    # "lSP":Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    :catch_0
    move-exception v7

    .line 100
    :cond_0
    :try_start_1
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 102
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    .line 103
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 6205
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 109
    if-eqz v7, :cond_2

    .line 110
    invoke-static {}, Lamz;->a()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_2
    if-eqz p0, :cond_3

    .line 114
    :try_start_2
    const-string/jumbo v7, "UTCommon"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 116
    .restart local v5    # "lSP":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 117
    .local v2, "lE":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "_is"

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lamm;->c([BI)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "lE":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "lSP":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    move-object v3, v1

    .line 124
    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 131
    .local v0, "imei":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 132
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 145
    .local v0, "imsi":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 146
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
