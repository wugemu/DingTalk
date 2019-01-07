.class final Lbmc$4;
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
    .line 192
    iput-object p1, p0, Lbmc$4;->a:Lbmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v2, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v2}, Lbmc;->i(Lbmc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    iget-boolean v0, v0, Lbni;->f:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lbmc$4;->a:Lbmc;

    iget-object v2, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v2}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v2

    iget-object v2, v2, Lbni;->b:Ljava/lang/String;

    iget-object v3, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v3}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v3

    iget-object v3, v3, Lbni;->c:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lbmc;->a(Lbmc;Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 203
    :cond_1
    sget-object v6, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_SCAN_TIMEOUT:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 204
    .local v6, "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    iget-object v0, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v0}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    iget-object v2, p0, Lbmc$4;->a:Lbmc;

    invoke-static {v2}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v2

    iget-object v2, v2, Lbni;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    goto :goto_0
.end method
