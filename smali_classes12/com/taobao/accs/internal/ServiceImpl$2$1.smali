.class final Lcom/taobao/accs/internal/ServiceImpl$2$1;
.super Ljava/lang/Object;
.source "ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ServiceImpl$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/ServiceImpl$2;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ServiceImpl$2;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v2, v2, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v2, v2, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v2, v2, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v2, v2, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 442
    invoke-static {}, Ljjo;->a()Ljjo;

    const v2, 0x101d1

    const-string/jumbo v3, "probeServiceEnabled"

    iget-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl$2$1;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v4, v4, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v4}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "ReceiverImpl probeTaoBao........mContext.startService(intent) [probe][successfully]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "ReceiverImpl probeTaoBao........messageServiceBinder [probe][end]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_1
    return-void

    .line 446
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ReceiverImpl probeTaoBao error........e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
