.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

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
    const/4 v4, 0x1

    .line 652
    .line 1655
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1656
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l()V

    .line 1658
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    .line 1660
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    const-string/jumbo v1, "fiter_notify_indicator_change"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1662
    const-string/jumbo v1, "key_org_dissolution"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1663
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1665
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    move-result-object v0

    .line 1666
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1667
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_last_create_org_info"

    aput-object v2, v0, v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcmu;->b(Ljava/lang/String;)V

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->finish()V

    .line 652
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 681
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 676
    return-void
.end method
