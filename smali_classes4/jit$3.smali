.class final Ljit$3;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljit;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljit;


# direct methods
.method constructor <init>(Ljit;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Ljit$3;->b:Ljit;

    iput-object p2, p0, Ljit$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 487
    :try_start_0
    iget-object v2, p0, Ljit$3;->b:Ljit;

    invoke-static {v2}, Ljit;->access$500(Ljit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    const/4 v2, 0x1

    sput-boolean v2, Ljir;->c:Z

    .line 489
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "wait app election time out"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v0, "startIntent":Landroid/content/Intent;
    iget-object v2, p0, Ljit$3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v2, p0, Ljit$3;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v0    # "startIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "mSelectAppTimeOutTask"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
