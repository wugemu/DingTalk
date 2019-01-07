.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;
.super Ljava/lang/Object;
.source "ManageOrgMemberFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 512
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string/jumbo v0, "count_limit"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const-string/jumbo v0, "dept_object"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 515
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2$1;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    return-object p1
.end method
