.class final Lbmc$1;
.super Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
.source "QuickConnectWifiManager.java"


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
    .line 47
    iput-object p1, p0, Lbmc$1;->a:Lbmc;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .param p3, "errorMessage"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 85
    if-eqz p2, :cond_1

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_SCAN_TIMEOUT:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    if-ne p2, v1, :cond_1

    .line 86
    const-string/jumbo v2, "1"

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->value()Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    invoke-static {v2, v1, v3}, Lbmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    invoke-static {v1}, Lbmc;->a(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    .line 92
    .local v0, "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    invoke-static {v1, v3}, Lbmc;->a(Lbmc;Lbni;)Lbni;

    .line 96
    return-void

    .line 88
    .end local v0    # "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    :cond_1
    const-string/jumbo v2, "2"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method

.method public final onConnectSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectSuccess(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    invoke-static {v1}, Lbmc;->a(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    .line 72
    .local v0, "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    const-string/jumbo v1, "2"

    invoke-static {v1}, Lbmb;->b(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lbmb;->b()V

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectSuccess(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbmc;->a(Lbmc;Lbni;)Lbni;

    .line 79
    return-void
.end method

.method public final onConnecting(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnecting(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    invoke-static {v1}, Lbmc;->a(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    .line 62
    .local v0, "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnecting(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final onScanning(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onScanning(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lbmc$1;->a:Lbmc;

    invoke-static {v1}, Lbmc;->a(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    .line 53
    .local v0, "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onScanning(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
