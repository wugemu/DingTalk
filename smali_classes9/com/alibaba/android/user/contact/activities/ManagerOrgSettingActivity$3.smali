.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 749
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 1752
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 1757
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 749
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 767
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ManagerOrgSettingActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ManagerOrgSettingActivity getOrgManageInfoV2 error: code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 768
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 763
    return-void
.end method
