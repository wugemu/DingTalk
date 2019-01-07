.class final Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;
.super Landroid/content/BroadcastReceiver;
.source "AlphaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 242
    if-nez p2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "isDisconnected":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 249
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    :cond_2
    const/4 v0, 0x1

    .line 255
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string/jumbo v2, "AlphaManager"

    const-string/jumbo v3, "wifi disconnected"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Lblq;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v3, v3, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v4, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lblq;->onError(ILjava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 259
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method
