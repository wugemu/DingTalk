.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ManageOrgMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 351
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string/jumbo v2, "com.workapp.org.employee.remove.last_bread_crumb"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const-string/jumbo v2, "dept_object"

    .line 356
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 357
    .local v1, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 361
    .local v0, "lastNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a()V

    goto :goto_0
.end method
