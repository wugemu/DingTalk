.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;
.super Ljava/lang/Object;
.source "CMailSettingsSubscribeCainiaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;)V

    .line 1746
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1747
    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1748
    iget-object v1, v0, Lacp;->a:Landroid/content/Context;

    sget v4, Laxo$i;->dt_mail_cainiao_confrim_unsubscribe:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1749
    sget v1, Laxo$i;->dt_mail_cainiao_confrim_unsubscribe_comment:I

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1750
    iget-object v1, v0, Lacp;->a:Landroid/content/Context;

    sget v4, Laxo$i;->dt_mail_cainiao_confrim_ok:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lacp$11;

    invoke-direct {v4, v0, v2, v3}, Lacp$11;-><init>(Lacp;Lacp$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1763
    iget-object v1, v0, Lacp;->a:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_cainiao_confrim_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacp$13;

    invoke-direct {v2, v0, v3}, Lacp$13;-><init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1771
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    invoke-static {v0, v1, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V

    goto :goto_0
.end method
