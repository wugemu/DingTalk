.class public Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
.super Ljava/lang/Object;
.source "H5NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;,
        Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    }
.end annotation


# static fields
.field private static final ONLINE_GW:Ljava/lang/String; = "https://mobilegw.alipay.com/mgw.htm"

.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;-><init>(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static TransferNetworkType(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)Ljava/lang/String;
    .locals 2
    .param p0, "network"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .prologue
    .line 117
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$2;->$SwitchMap$com$alipay$mobile$nebula$util$H5NetworkUtil$Network:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    const-string/jumbo v0, "none"

    goto :goto_0

    .line 121
    :pswitch_1
    const-string/jumbo v0, "2g"

    goto :goto_0

    .line 123
    :pswitch_2
    const-string/jumbo v0, "3g"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string/jumbo v0, "4g"

    goto :goto_0

    .line 127
    :pswitch_4
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->updateNetwork()V

    return-void
.end method

.method private final detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 6
    .param p1, "info"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 201
    :goto_0
    return-object v3

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 172
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 173
    .local v1, "subType":I
    const-string/jumbo v3, "NetworkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 176
    :cond_2
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 177
    :cond_3
    if-nez v2, :cond_4

    .line 178
    packed-switch v1, :pswitch_data_0

    .line 193
    :pswitch_0
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 187
    :pswitch_2
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 190
    :pswitch_3
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 197
    :cond_4
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "subType":I
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NetworkUtil"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    const-string/jumbo v1, "GWFServerUrl"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "gwf":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    goto :goto_0
.end method

.method public static final getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final updateNetwork()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    const/4 v3, 0x0

    .line 137
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    .line 138
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 139
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 145
    .local v0, "lastNetwork":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 147
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-eq v5, v0, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 140
    .end local v0    # "lastNetwork":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :catch_0
    move-exception v4

    .line 141
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "NetworkUtil"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 151
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "lastNetwork":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    monitor-enter v6

    .line 152
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 153
    .local v1, "listener":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;
    const-string/jumbo v7, "NetworkUtil"

    const-string/jumbo v8, "onNetworkChanged"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz v1, :cond_2

    .line 155
    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-interface {v1, v0, v7}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V

    goto :goto_2

    .line 158
    .end local v1    # "listener":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final declared-synchronized getNetworkString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "UNKNOWN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v0

    .line 88
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$2;->$SwitchMap$com$alipay$mobile$nebula$util$H5NetworkUtil$Network:[I

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_0

    .line 90
    :pswitch_0
    const-string/jumbo v0, "WIFI"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 94
    :pswitch_2
    const-string/jumbo v0, "3G"

    goto :goto_0

    .line 96
    :pswitch_3
    const-string/jumbo v0, "2G"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->registerReceiver()V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "NetworkUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "NetworkUtil"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
