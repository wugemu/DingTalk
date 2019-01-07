.class final Lcom/alibaba/alimei/framework/AlimeiService$5;
.super Landroid/content/BroadcastReceiver;
.source "AlimeiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/AlimeiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$5;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 571
    if-nez p2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 582
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 583
    const-string/jumbo v5, "networkInfo"

    .line 584
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 585
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 587
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_0

    .line 590
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService$5;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/AlimeiService;->access$600(Lcom/alibaba/alimei/framework/AlimeiService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v4

    .line 592
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "startExecuteAutoTryTask error-->"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 598
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .end local v4    # "tr":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService$5;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/AlimeiService;->access$600(Lcom/alibaba/alimei/framework/AlimeiService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 599
    :catch_1
    move-exception v4

    .line 600
    .restart local v4    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "startExecuteAutoTryTask error-->"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
