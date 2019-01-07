.class public final Ljwq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/devicediscover/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/g;)V
    .locals 0

    iput-object p1, p0, Ljwq;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwq;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Lcom/xiaomi/metoknlp/devicediscover/g;)Ljwt;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljwt;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljwq;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Lcom/xiaomi/metoknlp/devicediscover/g;)Ljwt;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljwt;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Ljwq;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Lcom/xiaomi/metoknlp/devicediscover/g;)Ljwt;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljwt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ljwq;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Lcom/xiaomi/metoknlp/devicediscover/g;)Ljwt;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Ljwt;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
