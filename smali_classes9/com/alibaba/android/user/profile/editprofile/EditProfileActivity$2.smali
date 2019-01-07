.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 390
    const-string/jumbo v1, "create_team_my_job_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 391
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_selected_position"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->k(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 393
    const-string/jumbo v2, "intent_key_industry_code"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    sget v3, Lezg$l;->dt_org_create_my_job:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 396
    return-void

    .line 393
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
