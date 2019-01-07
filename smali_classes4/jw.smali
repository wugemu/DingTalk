.class public final Ljw;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static volatile b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static volatile c:Ljava/lang/String;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:Z

.field private static i:Landroid/net/ConnectivityManager;

.field private static j:Landroid/net/wifi/WifiManager;

.field private static k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sput-object v1, Ljw;->a:Landroid/content/Context;

    .line 29
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 30
    const-string/jumbo v0, "unknown"

    sput-object v0, Ljw;->c:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "unknown"

    sput-object v0, Ljw;->d:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    sput-object v0, Ljw;->e:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Ljw;->f:Ljava/lang/String;

    .line 34
    sput-object v1, Ljw;->g:Landroid/util/Pair;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Ljw;->h:Z

    .line 37
    sput-object v1, Ljw;->i:Landroid/net/ConnectivityManager;

    .line 38
    sput-object v1, Ljw;->j:Landroid/net/wifi/WifiManager;

    .line 61
    new-instance v0, Ljw$1;

    invoke-direct {v0}, Ljw$1;-><init>()V

    sput-object v0, Ljw;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 41
    sget-boolean v1, Ljw;->h:Z

    sget-object v1, Ljw;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 42
    sget-object v2, Ljw;->a:Landroid/content/Context;

    monitor-enter v2

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    sget-object v1, Ljw;->a:Landroid/content/Context;

    sget-object v3, Ljw;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    sget-object v1, Ljw;->a:Landroid/content/Context;

    invoke-static {v1}, Ljw;->b(Landroid/content/Context;)V

    .line 53
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v1, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "registerReceiver failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Ljw;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Landroid/net/NetworkInfo;
    .locals 6

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    sget-object v2, Ljw;->i:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 167
    sget-object v2, Ljw;->a:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Ljw;->i:Landroid/net/ConnectivityManager;

    .line 169
    :cond_0
    sget-object v2, Ljw;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "getNetworkInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 77
    const-string/jumbo v5, "awcn.NetworkStatusMonitor"

    const-string/jumbo v6, "[checkNetworkStatus]"

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v5, v6, v12, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v2, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 79
    .local v2, "lastStatus":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v3, Ljw;->d:Ljava/lang/String;

    .line 81
    .local v3, "lastType":Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 82
    :try_start_0
    invoke-static {}, Ljw;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_5

    .line 84
    :cond_0
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v5, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 85
    const-string/jumbo v5, "unknown"

    sput-object v5, Ljw;->c:Ljava/lang/String;

    .line 86
    const-string/jumbo v5, "awcn.NetworkStatusMonitor"

    const-string/jumbo v6, "checkNetworkStatus"

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "NO NETWORK"

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_1
    :goto_0
    sget-object v5, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v5, v2, :cond_2

    sget-object v5, Ljw;->d:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Ljw;->d:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 111
    :cond_2
    const/4 v5, 0x2

    invoke-static {v5}, Lanet/channel/util/ALog;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    const-string/jumbo v5, "awcn.NetworkStatusMonitor"

    const-string/jumbo v6, "Network Status Change"

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ===>>> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_3
    sget-object v5, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v5}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 121
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    return-void

    .line 88
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v5, "awcn.NetworkStatusMonitor"

    const-string/jumbo v6, "checkNetworkStatus"

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "info.isConnected"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "info.isAvailable"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_10

    .line 90
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    .line 1124
    packed-switch v5, :pswitch_data_0

    .line 1132
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 90
    :goto_2
    sput-object v5, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 91
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 92
    sput-object v5, Ljw;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    sget-object v5, Ljw;->c:Ljava/lang/String;

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ljw;->c:Ljava/lang/String;

    .line 95
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 1137
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1138
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1139
    const-string/jumbo v6, "cmwap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1140
    const-string/jumbo v5, "cmwap"

    .line 95
    :goto_3
    sput-object v5, Ljw;->d:Ljava/lang/String;

    .line 96
    const/4 v5, 0x0

    sput-object v5, Ljw;->g:Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.NetworkStatusMonitor"

    const-string/jumbo v6, "checkNetworkStatus"

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v5, v6, v12, v0, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    :try_start_1
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 1128
    :pswitch_1
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 1130
    :pswitch_2
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 1141
    :cond_7
    const-string/jumbo v6, "uniwap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1142
    const-string/jumbo v5, "uniwap"

    goto :goto_3

    .line 1143
    :cond_8
    const-string/jumbo v6, "3gwap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1144
    const-string/jumbo v5, "3gwap"

    goto :goto_3

    .line 1145
    :cond_9
    const-string/jumbo v6, "ctwap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1146
    const-string/jumbo v5, "ctwap"

    goto :goto_3

    .line 1147
    :cond_a
    const-string/jumbo v6, "cmnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1148
    const-string/jumbo v5, "cmnet"

    goto :goto_3

    .line 1149
    :cond_b
    const-string/jumbo v6, "uninet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1150
    const-string/jumbo v5, "uninet"

    goto :goto_3

    .line 1151
    :cond_c
    const-string/jumbo v6, "3gnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1152
    const-string/jumbo v5, "3gnet"

    goto :goto_3

    .line 1153
    :cond_d
    const-string/jumbo v6, "ctnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1154
    const-string/jumbo v5, "ctnet"

    goto/16 :goto_3

    .line 1156
    :cond_e
    const-string/jumbo v5, "unknown"

    goto/16 :goto_3

    .line 1159
    :cond_f
    const-string/jumbo v5, "unknown"

    goto/16 :goto_3

    .line 97
    :cond_10
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 98
    sget-object v5, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v5, Ljw;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 99
    const-string/jumbo v5, "wifi"

    sput-object v5, Ljw;->c:Ljava/lang/String;

    .line 100
    const-string/jumbo v5, ""

    sput-object v5, Ljw;->d:Ljava/lang/String;

    .line 101
    invoke-static {}, Ljw;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 102
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_11

    .line 103
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ljw;->f:Ljava/lang/String;

    .line 104
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ljw;->e:Ljava/lang/String;

    .line 106
    :cond_11
    invoke-static {}, Ljw;->d()Landroid/util/Pair;

    move-result-object v5

    sput-object v5, Ljw;->g:Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1124
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

.method private static c()Landroid/net/wifi/WifiInfo;
    .locals 6

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_0
    sget-object v2, Ljw;->j:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 180
    sget-object v2, Ljw;->a:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Ljw;->j:Landroid/net/wifi/WifiManager;

    .line 182
    :cond_0
    sget-object v2, Ljw;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "getWifiInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static d()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-string/jumbo v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, "port":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    .end local v1    # "port":I
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
