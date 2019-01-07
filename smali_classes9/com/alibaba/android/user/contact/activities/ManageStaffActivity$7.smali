.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1018
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2021
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2023
    if-nez p1, :cond_1

    .line 2024
    sget v0, Lezg$l;->dt_contact_editMember_user_dimission:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2025
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->finish()V

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2031
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2033
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2037
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)Z

    .line 2041
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 2044
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->x(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->jobNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->y(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2053
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    invoke-static {v3}, Lfvj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->C(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2060
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/util/List;

    .line 2065
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    if-nez v0, :cond_7

    .line 2069
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2075
    :goto_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    if-eqz v0, :cond_4

    .line 2076
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->F(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2078
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 2079
    if-eqz v1, :cond_0

    .line 2083
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2084
    :goto_3
    if-ge v2, v3, :cond_8

    .line 2085
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 2086
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2087
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v4, v0, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;I)V

    .line 2084
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v0, v2

    .line 2040
    goto/16 :goto_1

    .line 2071
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2

    .line 2090
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->externalTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1102
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1097
    return-void
.end method
