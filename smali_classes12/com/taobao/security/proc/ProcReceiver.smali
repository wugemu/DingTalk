.class public Lcom/taobao/security/proc/ProcReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProcReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 12
    :cond_0
    :goto_0
    invoke-static {}, Lcom/taobao/security/proc/ProcService;->getComponent()Lcom/taobao/security/proc/ProcEntry;

    move-result-object v0

    .local v0, "entry":Lcom/taobao/security/proc/ProcEntry;
    if-nez v0, :cond_2

    .line 23
    sget-object v2, Lcom/taobao/security/proc/ProcService;->dynmicRegRecv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    .local v1, "intentTemp":Landroid/content/Intent;
    iget-object v2, v0, Lcom/taobao/security/proc/ProcEntry;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget v2, v0, Lcom/taobao/security/proc/ProcEntry;->kind:I

    if-nez v2, :cond_3

    .line 16
    iget-object v2, v0, Lcom/taobao/security/proc/ProcEntry;->pack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 18
    :cond_3
    iget v2, v0, Lcom/taobao/security/proc/ProcEntry;->kind:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/taobao/security/proc/ProcEntry;->pack:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
