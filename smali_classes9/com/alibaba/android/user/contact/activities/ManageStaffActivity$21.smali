.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-boolean p4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->c:Z

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
    .line 1599
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2602
    const-string/jumbo v0, "ManageStaffActivity"

    const-string/jumbo v1, "getOrgEmployeeExtensionProfile suc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2603
    if-nez p1, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2605
    :goto_0
    return-void

    .line 2608
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->a:Z

    if-eqz v0, :cond_3

    .line 2609
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    .line 2610
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 2611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 2615
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2621
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 2622
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserNamePinyin:Ljava/lang/String;

    .line 2624
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 2627
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    if-nez v0, :cond_1

    .line 2628
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;-><init>()V

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    .line 2630
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    .line 2633
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    iput v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    .line 2635
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->c:Z

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    goto :goto_0

    .line 2613
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 2617
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1646
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string/jumbo v0, "ManageStaffActivity"

    const-string/jumbo v1, "getOrgEmployeeExtensionProfile fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1641
    return-void
.end method
