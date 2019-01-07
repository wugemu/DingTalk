.class public Liep;
.super Ljava/lang/Object;
.source "VideoCallUtil.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field private static final n:Ljava/lang/String;

.field private static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Liep;->a:I

    .line 249
    const-class v0, Liep;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liep;->n:Ljava/lang/String;

    .line 274
    const/16 v0, 0x3e8

    sput v0, Liep;->b:I

    .line 275
    const/16 v0, 0x3e9

    sput v0, Liep;->c:I

    .line 276
    const/16 v0, 0x3ea

    sput v0, Liep;->d:I

    .line 277
    const/16 v0, 0x3eb

    sput v0, Liep;->e:I

    .line 278
    const/16 v0, 0x3ec

    sput v0, Liep;->f:I

    .line 279
    const/16 v0, 0x3ed

    sput v0, Liep;->g:I

    .line 280
    const/16 v0, 0x3ee

    sput v0, Liep;->h:I

    .line 281
    const/16 v0, 0x3ef

    sput v0, Liep;->i:I

    .line 282
    const/16 v0, 0x3f0

    sput v0, Liep;->j:I

    .line 283
    const/16 v0, 0x3f1

    sput v0, Liep;->k:I

    .line 284
    const/16 v0, 0x3f2

    sput v0, Liep;->l:I

    .line 285
    const/16 v0, 0x3f3

    sput v0, Liep;->m:I

    .line 287
    const/4 v0, 0x0

    sput-object v0, Liep;->o:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 454
    :try_start_0
    const-string/jumbo v2, "connectivity"

    .line 455
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 456
    .local v0, "connectManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 461
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v1

    .line 459
    .restart local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 461
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 501
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-object v1

    .line 505
    :cond_1
    const-string/jumbo v2, "local_wifi_level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    .local v0, "mSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(I)V
    .locals 5
    .param p0, "flag"    # I

    .prologue
    .line 290
    sget v2, Liep;->b:I

    if-lt p0, v2, :cond_0

    sget v2, Liep;->m:I

    if-le p0, v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    sget-object v2, Liep;->o:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 294
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Liep;->o:Ljava/util/HashMap;

    .line 296
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "currTime":J
    sget-object v2, Liep;->o:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string/jumbo v2, "local_wifi_level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 492
    .local v1, "mSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 497
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 511
    if-eqz p0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 513
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 514
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v2, "wifiInfo"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v2, "SSID"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 518
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
