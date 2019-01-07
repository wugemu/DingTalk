.class public final Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;
.super Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;
.source "LockScreenPwdActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 32
    .line 2036
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2037
    sget v1, Lezg$l;->forgot_security_passcode_action:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->security_passcode_error_relogin:I

    new-instance v3, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;-><init>(Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;)V

    .line 2038
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2074
    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2075
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 33
    return-void
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->finish()V

    .line 82
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->overridePendingTransition(II)V

    .line 83
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1196
    sget v0, Lezg$h;->pwd_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    sget v0, Lezg$l;->forgot_security_passcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->c(Ljava/lang/String;)V

    .line 23
    return-void
.end method
