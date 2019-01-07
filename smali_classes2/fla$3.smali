.class final Lfla$3;
.super Ljava/lang/Object;
.source "CreateOrgV3Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfla;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

.field final synthetic b:Lfla;


# direct methods
.method constructor <init>(Lfla;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V
    .locals 0
    .param p1, "this$0"    # Lfla;

    .prologue
    .line 398
    iput-object p1, p0, Lfla$3;->b:Lfla;

    iput-object p2, p0, Lfla$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Lfla$3;->b:Lfla;

    invoke-static {v0}, Lfla;->f(Lfla;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lfla$3;->b:Lfla;

    invoke-static {v0}, Lfla;->g(Lfla;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v2, p0, Lfla$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1793
    if-eqz v2, :cond_0

    .line 1798
    iget-boolean v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v1, :cond_1

    .line 1799
    sget v1, Lezg$l;->dt_org_create_title_admin_info:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1803
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1804
    const-string/jumbo v4, "intent_key_org_member_object"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1805
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    new-instance v1, Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    iput-boolean v2, v1, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    .line 1808
    const-string/jumbo v2, "intent_key_job_position_code"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1809
    const/16 v1, 0x3eb

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    :cond_0
    return-void

    .line 1801
    :cond_1
    sget v1, Lezg$l;->dt_org_create_title_member_info:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
