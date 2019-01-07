.class public final Lana;
.super Ljava/lang/Object;
.source "PhoneInfoUtils2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 13
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 14
    .local v6, "t2":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 15
    .local v7, "t3":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 16
    .local v8, "t4":I
    invoke-static {v5}, Lamt;->a(I)[B

    move-result-object v0

    .line 17
    .local v0, "b1":[B
    invoke-static {v6}, Lamt;->a(I)[B

    move-result-object v1

    .line 18
    .local v1, "b2":[B
    invoke-static {v7}, Lamt;->a(I)[B

    move-result-object v2

    .line 19
    .local v2, "b3":[B
    invoke-static {v8}, Lamt;->a(I)[B

    move-result-object v3

    .line 20
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 21
    .local v4, "bUniqueID":[B
    invoke-static {v0, v14, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {v1, v14, v4, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    const/16 v9, 0x8

    invoke-static {v2, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const/16 v9, 0xc

    invoke-static {v3, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v4}, Lamn;->b([B)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "imei":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 34
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1205
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    invoke-static {}, Lana;->a()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_1
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 53
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2205
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    invoke-static {}, Lana;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_1
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
