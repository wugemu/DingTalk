.class final Lcom/alibaba/android/user/login/ReportLossActivity$8;
.super Ljava/lang/Object;
.source "ReportLossActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 450
    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->dismissLoadingDialog()V

    .line 1457
    const-string/jumbo v0, "login_reportlost_success_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1458
    new-instance v0, Lfjl;

    iget-object v1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {v0, v1}, Lfjl;-><init>(Landroid/app/Activity;)V

    sget v1, Lezg$g;->icon_report_loss_success:I

    iget-object v2, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    sget v3, Lezg$l;->login_report_loss_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/login/ReportLossActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    sget v4, Lezg$l;->login_report_loss_success_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/login/ReportLossActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    sget v5, Lezg$l;->login_report_loss_success_content:I

    .line 1459
    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/login/ReportLossActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    sget v6, Lezg$l;->login_report_loss_action_return:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/login/ReportLossActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/login_pwd.html"

    const/4 v7, 0x0

    const-string/jumbo v8, "https://qr.dingtalk.com/login_pwd.html"

    const/4 v9, 0x1

    .line 1458
    invoke-virtual/range {v0 .. v9}, Lfjl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 1460
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->finish()V

    .line 450
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->dismissLoadingDialog()V

    .line 474
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string/jumbo v0, "12306"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$8;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/login/ReportLossActivity;->a(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 466
    return-void
.end method
