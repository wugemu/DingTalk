.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

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
    .line 341
    const-string/jumbo v1, "create_team_my_job_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 342
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_selected_position"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v2, "intent_key_industry_code"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .line 345
    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_org_create_my_job:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void

    .line 345
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
