.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;
.super Ljava/lang/Object;
.source "ManagerOrgContactActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string/jumbo v0, "display_department_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->c(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    const-string/jumbo v0, "org_contact_editor_model"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const-string/jumbo v0, "org_contact_editor_show_finish"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    sget v2, Lezg$l;->org_team_member:I

    .line 167
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v0, "fragment_key"

    const-string/jumbo v1, "OrgContactFragment"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v0, "show_crm_customer"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string/jumbo v0, "KEY_IS_FROM_MANAGE_ORG_ACTIVITY"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    return-object p1
.end method
