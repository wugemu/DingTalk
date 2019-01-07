.class final Lcit$b;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcit;


# direct methods
.method constructor <init>(Lcit;)V
    .locals 0
    .param p1, "this$0"    # Lcit;

    .prologue
    .line 196
    iput-object p1, p0, Lcit$b;->a:Lcit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 203
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 204
    const-string/jumbo v3, "WifiScanManager"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 205
    .local v1, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v3, Lcit$b$1;

    invoke-direct {v3, p0, v2}, Lcit$b$1;-><init>(Lcit$b;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, "wifiscan"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result parse err "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
