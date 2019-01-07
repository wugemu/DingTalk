.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$10;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$10;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1748
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "contact_exter_profile_invite_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1749
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$10;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->o(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lfve;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$10;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$10;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->B(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 2240
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2241
    sget v4, Lezg$l;->dt_user_profile_invite_active_dialog_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lezg$l;->dt_user_profile_invite_active_dialog_message:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const-string/jumbo v6, "http://tb.cn/UfQsSRx"

    aput-object v6, v5, v2

    .line 2242
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_user_profile_invite_active_dialog_send:I

    new-instance v3, Lfve$10;

    invoke-direct {v3, v0}, Lfve$10;-><init>(Lfve;)V

    .line 2243
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 2250
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1750
    return-void
.end method
