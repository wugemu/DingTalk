.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Boolean;

    .line 1404
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->dismissLoadingDialog()V

    .line 1405
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1406
    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Z)V

    .line 1408
    if-eqz v0, :cond_0

    .line 1409
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->a:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_user_set_password:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->ok:I

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;)V

    .line 1411
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 1419
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1423
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)Z

    .line 401
    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->h(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

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
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->dismissLoadingDialog()V

    .line 433
    const-string/jumbo v0, "checkNeedInitPwd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->h(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;->d:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 428
    return-void
.end method
