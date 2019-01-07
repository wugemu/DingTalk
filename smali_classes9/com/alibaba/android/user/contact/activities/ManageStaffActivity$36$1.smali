.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 585
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v0, "checkedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 588
    .local v1, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    .end local v1    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_0
    const-string/jumbo v2, "checked_department_list"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 592
    .end local v0    # "checkedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .line 593
    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_2

    .line 594
    const-string/jumbo v2, "org_name"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .line 595
    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 594
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_2
    const-string/jumbo v2, "display_enterprise_oid"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36$1;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .line 598
    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)J

    move-result-wide v4

    .line 597
    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 599
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    return-object p1
.end method
