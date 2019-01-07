.class final Lbmc$2;
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
    .line 99
    iput-object p1, p0, Lbmc$2;->a:Lbmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 103
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v6

    if-nez v6, :cond_0

    .line 132
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v6

    iget-object v0, v6, Lbni;->a:Ljava/lang/String;

    .line 107
    .local v0, "corpId":Ljava/lang/String;
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v6

    iget-object v5, v6, Lbni;->b:Ljava/lang/String;

    .line 108
    .local v5, "ssid":Ljava/lang/String;
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v6

    iget-object v4, v6, Lbni;->c:Ljava/lang/String;

    .line 109
    .local v4, "psk":Ljava/lang/String;
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->c(Lbmc;)I

    move-result v6

    if-lez v6, :cond_2

    .line 110
    const-string/jumbo v6, "QuickConnectWifiManager"

    const-string/jumbo v7, "connect timeout finally"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    iget-object v7, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v7}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_CONNECT_TIMEOUT:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 114
    .local v1, "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    new-instance v6, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;-><init>()V

    iget-object v7, p0, Lbmc$2;->a:Lbmc;

    .line 115
    invoke-static {v7}, Lbmc;->e(Lbmc;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a(Z)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;

    move-result-object v6

    .line 1048
    iget-object v2, v6, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    .line 117
    .local v2, "errorMessage":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "corpId"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v6, "ssid"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v7, "pskLen"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v6, "connectWifiValid"

    iget-object v7, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v7}, Lbmc;->e(Lbmc;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v6, "connectWifiFailDesc"

    const-string/jumbo v7, "timeout"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v6, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_QUICK_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v6, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 122
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    .line 127
    .end local v1    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .end local v2    # "errorMessage":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v6, "QuickConnectWifiManager"

    const-string/jumbo v7, "connect timeout firstly, retry"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lbmc;->a(Lbmc;Z)Z

    .line 129
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    iget-object v7, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v7}, Lbmc;->g(Lbmc;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x3a98

    invoke-virtual {v6, v7, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    iget-object v6, p0, Lbmc$2;->a:Lbmc;

    invoke-static {v6}, Lbmc;->h(Lbmc;)I

    goto/16 :goto_0
.end method
