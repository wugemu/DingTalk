.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;
.super Ljava/lang/Object;
.source "OrgContactNewFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

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
    .line 879
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 880
    const-string/jumbo v0, "node"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->e(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 881
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    sget v2, Lezg$l;->org_team_member:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    return-object p1
.end method
