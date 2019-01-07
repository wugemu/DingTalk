.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v2, "OneKeyWifiLayout"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "networkReceiver action = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    if-ne v2, v3, :cond_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 80
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    const-string/jumbo v2, "OneKeyWifiLayout"

    const-string/jumbo v3, "wifi disconnected"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
