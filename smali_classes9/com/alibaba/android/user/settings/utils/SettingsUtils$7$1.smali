.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 760
    check-cast p1, Ljava/lang/Boolean;

    .line 1763
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2022
    :cond_0
    invoke-static {p1, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1766
    if-eqz v0, :cond_2

    .line 1767
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->c:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1770
    :cond_1
    :goto_0
    return-void

    .line 1769
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-boolean v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->d:Z

    if-eqz v0, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->c:Lcma;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1772
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v1, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v2, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->c:Lcma;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v3, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v4, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->f:Ljava/lang/String;

    .line 2851
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2852
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2853
    sget v6, Lezg$l;->password_wrong:I

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lezg$l;->login_ok:I

    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;-><init>(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2854
    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2860
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 784
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 787
    :cond_0
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 789
    :cond_2
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_3
    const-string/jumbo v0, "123002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 780
    return-void
.end method
