.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->b:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    const-string/jumbo v0, "display_department_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getDepartmentId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    const-string/jumbo v0, "key_org_auth_level"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getAuthLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string/jumbo v0, "key_org_role"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getUserRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    return-object p1
.end method
