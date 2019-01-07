.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 1054
    invoke-static {}, Lewg;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Leuj$l;->conf_txt_terminate_prompt:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1057
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v2, Leuj$l;->login_ok:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v2, Leuj$l;->login_cancel:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1076
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1102
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Leuj$l;->conf_txt_exit_prompt:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v2, Leuj$l;->login_ok:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1093
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v2, Leuj$l;->login_cancel:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1099
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
