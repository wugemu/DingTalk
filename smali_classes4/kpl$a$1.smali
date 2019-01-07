.class final Lkpl$a$1;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkpl$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkpl$a;


# direct methods
.method constructor <init>(Lkpl$a;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lkpl$a$1;->a:Lkpl$a;

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
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 629
    :try_start_0
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onConnected running tid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    iget-object v1, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v1}, Lkpl$a;->b(Lkpl$a;)Lkpo;

    move-result-object v1

    iget-object v2, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v2}, Lkpl$a;->a(Lkpl$a;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lkpo;->a(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send finish. close this connection"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v1, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v1, v7}, Lkpl$a;->a(Lkpl$a;Lkpo;)Lkpo;

    .line 638
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v2}, Lkpl$a;->c(Lkpl$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 639
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send finish. close this connection"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v1, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v1, v7}, Lkpl$a;->a(Lkpl$a;Lkpo;)Lkpo;

    .line 638
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v2}, Lkpl$a;->c(Lkpl$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 636
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "AgooFactory"

    const-string/jumbo v3, "send finish. close this connection"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v2, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v2, v7}, Lkpl$a;->a(Lkpl$a;Lkpo;)Lkpo;

    .line 638
    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkpl$a$1;->a:Lkpl$a;

    invoke-static {v3}, Lkpl$a;->c(Lkpl$a;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method
