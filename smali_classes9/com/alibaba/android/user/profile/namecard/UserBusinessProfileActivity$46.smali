.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3788
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3789
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    const-class v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3791
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v4, Lezg$l;->dt_user_profile_other_orgs:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    const-string/jumbo v2, "isUserDept"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3793
    const-string/jumbo v2, "excludeOrgId"

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3794
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3795
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$46;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 3796
    return-void
.end method
