.class public Lcom/alibaba/lightapp/runtime/plugin/net/VPN;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "VPN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;
    }
.end annotation


# static fields
.field private static final VPN_RESULT_SUCCESS_CODE:I = 0x0

.field private static final VPN_START_ACTION:Ljava/lang/String; = "com.sangfor.ssl.dingtalk.start"

.field private static final VPN_START_REQUEST:Ljava/lang/String; = "sfminiconnect://sslvpnclient/vpn_login?"

.field private static final VPN_STOP_ACTION:Ljava/lang/String; = "com.sangfor.ssl.dingtalk.stop"

.field private static final VPN_STOP_REQUEST:Ljava/lang/String; = "sfminiconnect://sslvpnclient/vpn_stop?code=%s"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

.field private mStartCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->TAG:Ljava/lang/String;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/net/VPN;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/net/VPN;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private isVPNOnline(Ljava/lang/String;)Z
    .locals 5
    .param p1, "vpnAddress"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "online":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->wrapVpnAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, "vpnUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "vpnHost":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/net/vpn/DTSangforTunnelSocket;->detectTunnel(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 228
    .end local v2    # "vpnHost":Ljava/lang/String;
    .end local v3    # "vpnUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerVPNReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.action.vpn.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private startVPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnAddress"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_PARM_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v2

    .line 190
    :goto_0
    return v2

    .line 169
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->wrapVpnAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->isVPNOnline(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    :try_start_0
    const-string/jumbo v2, "sfminiconnect://sslvpnclient/vpn_login?vpnaddress=%s&code=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "UTF-8"

    .line 176
    invoke-static {p2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 175
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    .local v1, "requestUri":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sangfor.ssl.dingtalk.start"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_STARTING:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v2

    goto :goto_0

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "requestUri":Ljava/lang/String;
    :catch_0
    move-exception v2

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_UNKNOWN_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v2

    goto :goto_0

    .line 190
    :cond_2
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_SUCCESS:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v2

    goto :goto_0
.end method

.method private stopVPN(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return v2

    .line 201
    :cond_0
    const-string/jumbo v4, "sfminiconnect://sslvpnclient/vpn_stop?code=%s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "requestUri":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v2, "com.sangfor.ssl.dingtalk.stop"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 207
    goto :goto_0
.end method

.method private unRegisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mSVPNResultReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    :cond_0
    return-void
.end method

.method private wrapVpnAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "vpnAddress"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    const-string/jumbo v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string/jumbo v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 239
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object p1

    .line 241
    .restart local v0    # "index":I
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public check(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "vpnURL"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "vpnAddress":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->isVPNOnline(Ljava/lang/String;)Z

    move-result v1

    .line 67
    .local v1, "isVPNOnline":Z
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "isOnline"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "isVPNOnline":Z
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "vpnAddress":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->registerVPNReceiver()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->unRegisterReceiver()V

    .line 55
    return-void
.end method

.method public start(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    .line 84
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "vpnURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "vpnAddress":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "code":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    :cond_0
    const/16 v5, 0x10

    const-string/jumbo v6, "vpnURL or code is null"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "vpnAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    return-object v5

    .line 89
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v4    # "vpnAddress":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->startVPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 90
    .local v3, "result":I
    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_SUCCESS:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":I
    .end local v4    # "vpnAddress":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    const/4 v5, 0x2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "result":I
    .restart local v4    # "vpnAddress":Ljava/lang/String;
    :cond_3
    :try_start_2
    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_STARTING:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 94
    const-string/jumbo v5, "start vpn app error"

    invoke-static {v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->mStartCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public stop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->stopVPN(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 110
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4

    .line 114
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_0
    const/4 v4, 0x3

    :try_start_1
    const-string/jumbo v5, "stop error"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "success":Z
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
