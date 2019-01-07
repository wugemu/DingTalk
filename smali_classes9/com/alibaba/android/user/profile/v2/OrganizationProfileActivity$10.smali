.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 542
    const-string/jumbo v0, "userprofile_exit_org_confirm_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getAuthLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const/16 v4, 0xa

    const/4 v5, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10$1;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-interface {v0, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-interface/range {v1 .. v6}, Lezt;->a(JILjava/lang/String;Lcma;)V

    .line 579
    :goto_0
    return-void

    .line 568
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .line 569
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/quit_org.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10$2;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;)V

    .line 570
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
