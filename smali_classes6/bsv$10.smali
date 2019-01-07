.class final Lbsv$10;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsa;

.field final synthetic b:Lbsy$b;

.field final synthetic c:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsa;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 520
    iput-object p1, p0, Lbsv$10;->c:Lbsv;

    iput-object p2, p0, Lbsv$10;->a:Lbsa;

    iput-object p3, p0, Lbsv$10;->b:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 523
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->s()V

    .line 527
    if-eqz p1, :cond_5

    .line 528
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    iget-object v1, v1, Lbsv;->b:Lbsw$b;

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    iget-object v1, v1, Lbsv;->b:Lbsw$b;

    invoke-interface {v1, v4}, Lbsw$b;->d(Z)V

    .line 532
    :cond_2
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->j()V

    .line 533
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->n()V

    .line 536
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    iget-object v2, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v2}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.alibaba.android.dingtalk.ACTION_BLE_QUICK_SCAN"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lbsv$10;->a:Lbsa;

    iget-object v1, v1, Lbsa;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 541
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lbsv$10;->a:Lbsa;

    iget-object v2, v2, Lbsa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v2}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 546
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lbsv$10;->b:Lbsy$b;

    if-eqz v1, :cond_4

    .line 547
    iget-object v1, p0, Lbsv$10;->b:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 550
    :cond_4
    const-string/jumbo v1, "3"

    invoke-static {v1}, Lbsn;->b(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->m()V

    goto :goto_0

    .line 554
    :cond_5
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    .line 1075
    invoke-virtual {v1}, Lbsv;->F()Z

    move-result v1

    .line 554
    if-eqz v1, :cond_7

    .line 555
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 556
    iget-object v1, p0, Lbsv$10;->c:Lbsv;

    sget v2, Lbrx$g;->dt_door_guard_active_fail:I

    invoke-virtual {v1, v2}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 562
    :cond_6
    :goto_1
    iget-object v1, p0, Lbsv$10;->b:Lbsy$b;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lbsv$10;->b:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 559
    :cond_7
    const/4 p2, 0x0

    goto :goto_1
.end method
