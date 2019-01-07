.class public Lcom/taobao/accs/base/BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseReceiver.java"


# instance fields
.field private a:Ljii;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 19
    iget-object v2, p0, Lcom/taobao/accs/base/BaseReceiver;->a:Ljii;

    if-nez v2, :cond_0

    .line 21
    :try_start_0
    invoke-static {}, Ljja;->a()Ljja;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljja;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.internal.ReceiverImpl"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljii;

    iput-object v2, p0, Lcom/taobao/accs/base/BaseReceiver;->a:Ljii;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/taobao/accs/base/BaseReceiver;->a:Ljii;

    if-eqz v2, :cond_1

    .line 35
    const-string/jumbo v2, "BaseReceiver"

    const-string/jumbo v3, "onReceive"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v2, p0, Lcom/taobao/accs/base/BaseReceiver;->a:Ljii;

    invoke-interface {v2, p1, p2}, Ljii;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :try_start_1
    const-string/jumbo v2, "com.taobao.accs.internal.ReceiverImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljii;

    iput-object v2, p0, Lcom/taobao/accs/base/BaseReceiver;->a:Ljii;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :goto_2
    const-string/jumbo v2, "BaseReceiver"

    const-string/jumbo v3, "onReceive"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :catch_1
    move-exception v1

    .line 30
    .local v1, "e1":Ljava/lang/Exception;
    const-string/jumbo v2, "BaseReceiver"

    const-string/jumbo v3, "onReceive1"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "BaseReceiver"

    const-string/jumbo v3, "onReceive baseReceiver NULL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
