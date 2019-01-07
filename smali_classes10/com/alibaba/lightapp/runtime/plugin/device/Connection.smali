.class public Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Connection.java"


# static fields
.field private static final NET_2G:Ljava/lang/String; = "2g"

.field private static final NET_3G:Ljava/lang/String; = "3g"

.field private static final NET_4G:Ljava/lang/String; = "4g"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final WIFI:Ljava/lang/String; = "wifi"


# instance fields
.field mNetworkListener:Lcom/laiwang/protocol/android/NetworkListener;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 35
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mNetworkListener:Lcom/laiwang/protocol/android/NetworkListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getNetInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private getNetInfo()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    .line 133
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    :cond_0
    const-string/jumbo v3, "none"

    .line 164
    :goto_0
    return-object v3

    .line 139
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 140
    const-string/jumbo v3, "wifi"

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 144
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 164
    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 150
    :pswitch_0
    const-string/jumbo v3, "2g"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string/jumbo v3, "3g"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string/jumbo v3, "4g"

    goto :goto_0

    .line 144
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


# virtual methods
.method public getNetworkType(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getNetInfo()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "info":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v3

    .line 1090
    iget-boolean v3, v3, Lclr;->a:Z

    .line 120
    if-eqz v3, :cond_0

    .line 121
    const-string/jumbo v3, "lwpStatus"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v3

    .line 123
    :cond_0
    :try_start_1
    const-string/jumbo v3, "lwpStatus"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mNetworkListener:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-static {v1}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->mNetworkListener:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->removeNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 111
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 112
    return-void
.end method
