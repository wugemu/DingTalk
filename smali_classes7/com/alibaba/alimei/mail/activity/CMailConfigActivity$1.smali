.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1571
    const-string/jumbo v0, "mail_account_setting_backup_quit_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .line 2562
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2563
    sget v2, Laxo$i;->alm_cmail_mail_account_unbind_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2564
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2565
    sget v2, Laxo$i;->alm_cmail_mail_account_unbind_confirm:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;

    invoke-direct {v3, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2574
    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$3;

    invoke-direct {v3, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2581
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto/16 :goto_0

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto/16 :goto_0

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->n(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    goto/16 :goto_0
.end method
