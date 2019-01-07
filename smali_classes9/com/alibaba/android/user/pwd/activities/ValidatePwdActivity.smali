.class public Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;
.super Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
.source "ValidatePwdActivity.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;-><init>()V

    .line 19
    sget v0, Lezg$l;->enter_security_passcode:I

    iput v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->a:I

    .line 20
    sget v0, Lezg$l;->security_passcode_error_too_much:I

    iput v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->b:I

    return-void
.end method


# virtual methods
.method protected final d(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v2, p1, v4, v5}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pref_pwd_error_count_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->h()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pref_pwd_error_count_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 66
    .local v1, "errorCount":I
    add-int/lit8 v1, v1, 0x1

    .line 67
    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 1035
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1036
    iget v3, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->b:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lezg$l;->security_passcode_error_relogin:I

    new-instance v5, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity$1;-><init>(Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;)V

    .line 1037
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1043
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1044
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 73
    :goto_1
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->a(J)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "errorCount":I
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pref_pwd_error_count_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->h()V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "errorCount":I
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pref_pwd_error_count_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    sget v2, Lezg$l;->security_passcode_error_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rsub-int/lit8 v5, v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->finish()V

    .line 88
    return-void
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lchy;->logout(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->finish()V

    .line 50
    return-void
.end method

.method protected final j()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->i()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "first_step_title_res"

    sget v2, Lezg$l;->enter_security_passcode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->a:I

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "validate_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->c:Ljava/lang/String;

    .line 29
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->a(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->b(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->d()V

    .line 32
    return-void
.end method
