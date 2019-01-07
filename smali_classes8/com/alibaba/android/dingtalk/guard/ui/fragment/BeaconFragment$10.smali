.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 292
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v9, 0x65

    const/16 v8, 0x64

    .line 295
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    move v0, v2

    .line 301
    .local v0, "login":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 303
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z

    .line 307
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->c()V

    .line 335
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/16 v2, 0x9c4

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)V

    goto :goto_0

    .end local v0    # "login":Z
    :cond_3
    move v0, v1

    .line 298
    goto :goto_1

    .line 310
    .restart local v0    # "login":Z
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 313
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .line 1027
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v2

    .line 1028
    if-eqz v2, :cond_6

    .line 1029
    invoke-interface {v2}, Lbsw$a;->b()Z

    move-result v1

    .line 313
    :cond_6
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I

    move-result v1

    if-nez v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 320
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 321
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->n(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 325
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2
.end method
