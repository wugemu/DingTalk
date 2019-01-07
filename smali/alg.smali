.class public final Lalg;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalg$a;,
        Lalg$b;
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Z

.field private static c:Lalg$b;

.field private static d:Lalg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Unknown"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lalg;->a:[Ljava/lang/String;

    .line 31
    sput-boolean v3, Lalg;->b:Z

    .line 258
    new-instance v0, Lalg$b;

    invoke-direct {v0, v3}, Lalg$b;-><init>(B)V

    sput-object v0, Lalg;->c:Lalg$b;

    .line 259
    new-instance v0, Lalg$a;

    invoke-direct {v0, v3}, Lalg$a;-><init>(B)V

    sput-object v0, Lalg;->d:Lalg$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v4

    .line 1305
    iget-object v1, v4, Lajw;->c:Landroid/content/Context;

    .line 37
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 38
    const-string/jumbo v4, "Unknown"

    .line 2082
    :goto_0
    return-object v4

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 42
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 47
    .local v2, "nInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    .line 48
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 52
    const-string/jumbo v4, "Wi-Fi"

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_4

    .line 54
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 2064
    packed-switch v4, :pswitch_data_0

    .line 2084
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 2070
    :pswitch_0
    const-string/jumbo v4, "2G"

    goto :goto_0

    .line 2080
    :pswitch_1
    const-string/jumbo v4, "3G"

    goto :goto_0

    .line 2082
    :pswitch_2
    const-string/jumbo v4, "4G"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cManager":Landroid/net/ConnectivityManager;
    .end local v2    # "nInfo":Landroid/net/NetworkInfo;
    .end local v3    # "pManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 60
    :cond_4
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 2064
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

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 96
    if-eqz p0, :cond_1

    .line 98
    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 99
    .local v0, "conManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 104
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 116
    .end local v0    # "conManager":Landroid/net/ConnectivityManager;
    .end local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 108
    .restart local v0    # "conManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "conManager":Landroid/net/ConnectivityManager;
    .end local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    .line 116
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic b()Lalg$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lalg;->d:Lalg$a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-boolean v0, Lalg;->b:Z

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0}, Lalg;->k(Landroid/content/Context;)V

    .line 123
    :cond_0
    sget-object v0, Lalg;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 158
    const-string/jumbo v3, "00:00:00:00:00:00"

    .line 160
    .local v3, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "wlan0"

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 162
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 163
    .local v2, "mac":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 165
    const-string/jumbo v6, "%02X%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v8, v2, v1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    const-string/jumbo v5, ":"

    :goto_1
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 172
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "mac":[B
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_2
    return-object v3

    .line 170
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 128
    :try_start_0
    invoke-static {p0}, Lalg;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0}, Lalg;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "2G/3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 141
    .restart local v0    # "networkStatus":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Unknown"

    goto :goto_0

    .line 144
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 150
    invoke-static {}, Lalg;->c()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lalg;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    if-eqz p0, :cond_0

    .line 203
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 204
    .local v0, "wifiManage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 205
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v5, v3, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    .end local v0    # "wifiManage":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lalg;->c:Lalg$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    :try_start_0
    invoke-static {p0}, Lalf;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    invoke-static {}, Lanh;->a()Lanh;

    sget-object v1, Lalg;->d:Lalg$a;

    .line 2273
    iput-object p0, v1, Lalg$a;->a:Landroid/content/Context;

    .line 245
    invoke-static {v1}, Lanh;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    if-nez p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lalg;->c:Lalg$b;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lalg;->c:Lalg$b;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method static synthetic i(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lalg;->k(Landroid/content/Context;)V

    return-void
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    if-eqz p0, :cond_2

    .line 178
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 179
    .local v2, "wifimanage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 180
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const-string/jumbo v0, "00:00:00:00:00:00"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 187
    .restart local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string/jumbo v0, "00:00:00:00:00:00"

    goto :goto_0

    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 192
    :cond_2
    const-string/jumbo v0, "00:00:00:00:00:00"

    goto :goto_0
.end method

.method private static declared-synchronized k(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 291
    const-class v5, Lalg;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 292
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 296
    .restart local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 297
    .local v1, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_3

    .line 298
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    .end local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget-boolean v4, Lalg;->b:Z

    if-nez v4, :cond_0

    .line 318
    const/4 v4, 0x1

    sput-boolean v4, Lalg;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 301
    .restart local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 302
    .local v3, "nInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 303
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v7, v4, :cond_4

    .line 304
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Wi-Fi"

    aput-object v7, v4, v6

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 306
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "2G/3G"

    aput-object v7, v4, v6

    .line 307
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_1

    .line 310
    :cond_5
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6

    .line 311
    sget-object v4, Lalg;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
