.class final Lbmc$7;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmc;->a(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbmc;


# direct methods
.method constructor <init>(Lbmc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbmc;

    .prologue
    .line 282
    iput-object p1, p0, Lbmc$7;->c:Lbmc;

    iput-object p2, p0, Lbmc$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lbmc$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v1, p0, Lbmc$7;->c:Lbmc;

    invoke-static {v1}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v1

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const-string/jumbo v1, "QuickConnectWifiManager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "connectSsid stopped, wifi disabled"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_CHANGE_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 291
    .local v0, "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    iget-object v1, p0, Lbmc$7;->c:Lbmc;

    invoke-static {v1}, Lbmc;->f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v1

    iget-object v2, p0, Lbmc$7;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    goto :goto_0

    .line 293
    .end local v0    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    :cond_1
    iget-object v1, p0, Lbmc$7;->c:Lbmc;

    invoke-static {v1, v4}, Lbmc;->a(Lbmc;I)I

    .line 294
    iget-object v1, p0, Lbmc$7;->c:Lbmc;

    iget-object v2, p0, Lbmc$7;->a:Ljava/lang/String;

    iget-object v3, p0, Lbmc$7;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lbmc;->a(Lbmc;Z)Z

    .line 295
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lbmc$7;->c:Lbmc;

    invoke-static {v2}, Lbmc;->d(Lbmc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 296
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lbmc$7;->c:Lbmc;

    invoke-static {v2}, Lbmc;->g(Lbmc;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
