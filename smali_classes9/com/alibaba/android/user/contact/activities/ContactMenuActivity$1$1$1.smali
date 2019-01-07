.class final Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;
.super Ljava/lang/Object;
.source "ContactMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x3

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->a:I

    if-ge v1, v3, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    const-string/jumbo v2, "showOperateOrgRedDot"

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    sget v2, Lezg$h;->tv_new:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    if-eqz v1, :cond_2

    .line 102
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    if-eqz v1, :cond_2

    .line 105
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_register_enter"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;->b:Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    sget v2, Lezg$l;->create_org_unable_toast:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1$1$1;)V

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
