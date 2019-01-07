.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;
.super Ljava/lang/Object;
.source "ManagerOrgActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

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
    .line 1115
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1116
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string/jumbo v0, "display_department_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->e(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1118
    const-string/jumbo v0, "key_org_role"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    const-string/jumbo v0, "intent_key_has_set_boss"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasSetBoss:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    const-string/jumbo v0, "intent_key_inactive_staff_count"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->memberCount:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->activeMemeberCount:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1123
    :cond_0
    return-object p1
.end method
