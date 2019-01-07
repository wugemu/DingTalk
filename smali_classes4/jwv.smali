.class final Ljwv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljwh;


# direct methods
.method constructor <init>(Ljwh;)V
    .locals 0

    iput-object p1, p0, Ljwv;->a:Ljwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 0
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    invoke-virtual {v0}, Ljwc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljwv;->a:Ljwh;

    .line 2000
    invoke-static {}, Ljws;->a()Ljws;

    move-result-object v2

    iget-object v0, v1, Ljwh;->a:Landroid/content/Context;

    .line 3000
    iput-object v0, v2, Ljws;->g:Landroid/content/Context;

    new-instance v3, Ljwn;

    invoke-direct {v3, v2, v7}, Ljwn;-><init>(Ljws;B)V

    iput-object v3, v2, Ljws;->e:Ljwn;

    new-instance v3, Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-direct {v3, v0}, Lcom/xiaomi/metoknlp/devicediscover/g;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    iget-object v3, v2, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    .line 4000
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/c;

    iget-object v4, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/xiaomi/metoknlp/devicediscover/c;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    iget-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->b:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v4, "WifiCampStatics"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    iget-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Ljwt;

    iget-object v4, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljwt;-><init>(Lcom/xiaomi/metoknlp/devicediscover/g;Landroid/os/Looper;)V

    iput-object v0, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v3}, Lcom/xiaomi/metoknlp/devicediscover/g;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 5000
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    iget-object v3, v3, Lcom/xiaomi/metoknlp/devicediscover/g;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3000
    :cond_0
    iget-object v0, v2, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    iget-object v2, v2, Ljws;->e:Ljwn;

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Ljwu;)V

    .line 2000
    iput-boolean v6, v1, Ljwh;->f:Z

    .line 0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljwv;->a:Ljwh;

    .line 7000
    invoke-static {}, Ljws;->a()Ljws;

    move-result-object v1

    .line 8000
    iget-object v2, v1, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    .line 9000
    invoke-virtual {v2}, Lcom/xiaomi/metoknlp/devicediscover/g;->a()I

    move-result v3

    if-nez v3, :cond_4

    .line 10000
    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v3, v6}, Ljwt;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v3, v6}, Ljwt;->removeMessages(I)V

    :cond_2
    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v3, v4}, Ljwt;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v3, v4}, Ljwt;->removeMessages(I)V

    :cond_3
    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9000
    :cond_4
    iput-object v5, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->b:Landroid/net/ConnectivityManager;

    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {v3}, Lcom/xiaomi/metoknlp/devicediscover/c;->a()V

    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v5, v2, Lcom/xiaomi/metoknlp/devicediscover/g;->f:Landroid/os/HandlerThread;

    .line 8000
    :cond_5
    iget-object v2, v1, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-virtual {v2}, Lcom/xiaomi/metoknlp/devicediscover/g;->b()V

    iput-object v5, v1, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    :cond_6
    iput-object v5, v1, Ljws;->e:Ljwn;

    .line 7000
    iput-boolean v7, v0, Ljwh;->f:Z

    goto :goto_0
.end method
