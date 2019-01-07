.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1445
    if-ne p2, v10, :cond_1

    .line 1446
    new-instance v2, Lcom/alibaba/android/user/model/IconFontParams;

    invoke-direct {v2}, Lcom/alibaba/android/user/model/IconFontParams;-><init>()V

    .line 1447
    .local v2, "params":Lcom/alibaba/android/user/model/IconFontParams;
    sget v0, Lezg$l;->icon_lock_fill:I

    iput v0, v2, Lcom/alibaba/android/user/model/IconFontParams;->iconId:I

    .line 1448
    sget v0, Lezg$e;->ui_common_theme_text_color:I

    iput v0, v2, Lcom/alibaba/android/user/model/IconFontParams;->colorId:I

    .line 1449
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Lcom/alibaba/android/user/model/IconFontParams;->size:I

    .line 1450
    new-instance v0, Lfjl;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v0, v3}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v4, Lezg$l;->login_report_loss_title:I

    .line 1453
    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v5, Lezg$l;->login_report_loss_tips_title:I

    .line 1454
    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v6, Lezg$l;->login_report_loss_tips_content:I

    .line 1455
    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v7, Lezg$l;->login_report_loss_action_start:I

    .line 1456
    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/login_report_loss.html"

    move-object v9, v8

    .line 1450
    invoke-virtual/range {v0 .. v10}, Lfjl;->a(ILcom/alibaba/android/user/model/IconFontParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 1458
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v1, "login_reportlost_click"

    invoke-static {v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1466
    .end local v2    # "params":Lcom/alibaba/android/user/model/IconFontParams;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1467
    return-void

    .line 1459
    :cond_1
    if-nez p2, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V

    .line 1462
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->B(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1464
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->C(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Z

    move-result v1

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->D(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;ZZ)V

    goto :goto_0
.end method
