.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "BeaconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 393
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->d()I

    move-result v2

    .line 399
    .local v2, "state":I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 401
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 402
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z

    goto :goto_0

    .line 406
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->o(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->c()V

    goto :goto_0

    .line 412
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 413
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 417
    .end local v2    # "state":I
    :cond_5
    const-string/jumbo v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 418
    invoke-static {}, Lcms;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 423
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 426
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getFoundDeviceCount()I

    move-result v1

    .line 427
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 428
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z

    goto/16 :goto_0
.end method
