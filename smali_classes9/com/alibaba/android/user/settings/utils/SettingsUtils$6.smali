.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcma;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->a:Lcma;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-object p5, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 671
    check-cast p1, Ljava/lang/Boolean;

    .line 1674
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1675
    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Z)V

    .line 1677
    if-eqz v0, :cond_1

    .line 1678
    const-string/jumbo v0, "checkNeedInitPwd"

    const-string/jumbo v1, "checkHasPwd needInit is true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->a:Lcma;

    const-string/jumbo v1, "checkHasPwd needInit is true"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1684
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_user_set_password:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->ok:I

    new-instance v2, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;-><init>(Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;)V

    .line 1685
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    .line 1692
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1693
    :goto_0
    return-void

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->a:Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->g:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 704
    const-string/jumbo v0, "checkNeedInitPwd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->a:Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->g:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 700
    return-void
.end method
