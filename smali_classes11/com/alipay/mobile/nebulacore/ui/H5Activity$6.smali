.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;
.super Landroid/content/BroadcastReceiver;
.source "H5Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initUcReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

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
    .line 618
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string/jumbo v1, "h5_action_uc_init_finish"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ucInitLoadingShown"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 632
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uc init result "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$300(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    goto :goto_0
.end method
