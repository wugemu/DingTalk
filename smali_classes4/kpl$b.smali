.class final Lkpl$b;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lkpl;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lkpl;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pack"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 554
    iput-object p1, p0, Lkpl$b;->a:Lkpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lkpl$b;->b:Ljava/lang/String;

    .line 556
    iput-object p3, p0, Lkpl$b;->c:Landroid/content/Intent;

    .line 557
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 562
    :try_start_0
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "running tid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",pack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lkpl$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lkpl$b;->c:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SendMessageRunnable for accs,pack="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lkpl$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :try_start_1
    iget-object v4, p0, Lkpl$b;->c:Landroid/content/Intent;

    iget-object v5, p0, Lkpl$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v4, p0, Lkpl$b;->c:Landroid/content/Intent;

    const-string/jumbo v5, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lkpl$b;->c:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "org.android.agoo.client.MessageReceiverService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "remoteIntent":Landroid/content/Intent;
    iget-object v4, p0, Lkpl$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "this message pack:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lkpl$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    const-string/jumbo v4, "AgooFactory"

    const-string/jumbo v5, "start to service..."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    new-instance v0, Lkpl$a;

    iget-object v4, p0, Lkpl$b;->a:Lkpl;

    iget-object v5, p0, Lkpl$b;->c:Landroid/content/Intent;

    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkpl$b;->c:Landroid/content/Intent;

    invoke-direct {v0, v4, v5, v6}, Lkpl$a;-><init>(Lkpl;Ljava/lang/String;Landroid/content/Intent;)V

    .line 583
    .local v0, "conn":Lkpl$a;
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 584
    .local v3, "result":Z
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start service ret:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    if-nez v3, :cond_0

    .line 587
    const-string/jumbo v4, "AgooFactory"

    const-string/jumbo v5, "SendMessageRunnable is error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    .end local v0    # "conn":Lkpl$a;
    .end local v2    # "remoteIntent":Landroid/content/Intent;
    .end local v3    # "result":Z
    :cond_0
    :goto_1
    return-void

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SendMessageRunnable is error,e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method
