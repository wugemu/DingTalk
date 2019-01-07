.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;
.super Ljava/lang/Object;
.source "ManageOrgMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 501
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_org_setmanager_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/dept_member.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
