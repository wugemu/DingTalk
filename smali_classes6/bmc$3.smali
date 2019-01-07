.class final Lbmc$3;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmc;


# direct methods
.method constructor <init>(Lbmc;)V
    .locals 0
    .param p1, "this$0"    # Lbmc;

    .prologue
    .line 135
    iput-object p1, p0, Lbmc$3;->a:Lbmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 138
    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v9

    if-nez v9, :cond_0

    .line 189
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v9

    iget-object v0, v9, Lbni;->a:Ljava/lang/String;

    .line 142
    .local v0, "corpId":Ljava/lang/String;
    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v9

    iget-object v5, v9, Lbni;->b:Ljava/lang/String;

    .line 143
    .local v5, "ssid":Ljava/lang/String;
    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v9

    iget-object v4, v9, Lbni;->c:Ljava/lang/String;

    .line 144
    .local v4, "psk":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c()Z

    move-result v9

    if-nez v9, :cond_1

    .line 145
    const-string/jumbo v8, "QuickConnectWifiManager"

    const-string/jumbo v9, "wifi disabled"

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_CHANGE_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 148
    .local v1, "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    iget-object v8, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v8}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v1, v9}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 150
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->g(Lbmc;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 154
    .end local v1    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 155
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->f()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 156
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "ssidConnected":Ljava/lang/String;
    const-string/jumbo v9, "QuickConnectWifiManager"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ssidConnected = "

    aput-object v11, v10, v8

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", ssid = "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    const-string/jumbo v8, "QuickConnectWifiManager"

    const-string/jumbo v9, "connected"

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->g(Lbmc;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v8, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v8}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_2
    const-string/jumbo v9, "QuickConnectWifiManager"

    const-string/jumbo v10, "connected others"

    invoke-static {v9, v10}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v9

    iget-object v10, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v10}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v9

    iget-object v10, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v10}, Lbmc;->g(Lbmc;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 173
    .restart local v1    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    new-instance v9, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;-><init>()V

    iget-object v10, p0, Lbmc$3;->a:Lbmc;

    .line 174
    invoke-static {v10}, Lbmc;->e(Lbmc;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a(Z)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;

    move-result-object v9

    .line 1048
    iget-object v2, v9, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    .line 176
    .local v2, "errorMessage":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;
    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v9

    invoke-virtual {v9, v5, v1, v2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 178
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "corpId"

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v9, "ssid"

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v9, "pskLen"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v8, "connectWifiValid"

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->e(Lbmc;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v8, "connectWifiFailDesc"

    const-string/jumbo v9, "connected others"

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v8, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_QUICK_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v8, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 181
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1

    .line 188
    .end local v1    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .end local v2    # "errorMessage":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ssidConnected":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    iget-object v9, p0, Lbmc$3;->a:Lbmc;

    invoke-static {v9}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
