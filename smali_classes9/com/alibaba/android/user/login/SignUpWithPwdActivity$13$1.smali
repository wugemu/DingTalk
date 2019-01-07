.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 973
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 3061
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 973
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 978
    const-string/jumbo v2, "SignUpWithPwdActivity"

    const-string/jumbo v3, "loginWithPwd onException:%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 982
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "login"

    const-string/jumbo v3, "login_with_Pwd"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/16 v2, 0x3459

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 987
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    .line 993
    const-string/jumbo v2, "12304"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 994
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->network_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    .line 1057
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 995
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "12303"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->server_down:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :cond_1
    const-string/jumbo v2, "123002"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->login_error_wrong_phoneorpwd:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :cond_2
    const-string/jumbo v2, "12305"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1000
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .line 1001
    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->login_error_try_again:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_3
    const-string/jumbo v2, "12306"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1003
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    :cond_4
    const-string/jumbo v2, "14001"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1005
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lezg$l;->sure:I

    new-instance v4, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1015
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->login_device_security_tip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "reason":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1017
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "11044"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1018
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v3, "login_contact_confirm_popup_click"

    invoke-static {v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1019
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lezg$l;->sure:I

    new-instance v4, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    .line 1035
    invoke-virtual {v2, v3, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_need_verify:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1036
    :cond_7
    const-string/jumbo v2, "11066"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1037
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;

    invoke-direct {v3, p0, v0, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    .line 1045
    invoke-virtual {v2, v3, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->dt_login_verify_faceid:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1047
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_8
    const-string/jumbo v2, "11024"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1048
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    move-result-object v2

    .line 2570
    iget v3, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->b:I

    .line 1049
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    move-result-object v2

    .line 2574
    iget v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->b:I

    .line 1049
    const/4 v3, 0x3

    if-lt v2, v3, :cond_9

    .line 1050
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->z(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    goto/16 :goto_0

    .line 1052
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1067
    return-void
.end method
