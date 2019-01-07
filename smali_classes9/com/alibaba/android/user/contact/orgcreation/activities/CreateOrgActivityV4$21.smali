.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;
.super Landroid/content/BroadcastReceiver;
.source "CreateOrgActivityV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    const-string/jumbo v2, "action_key_select_org_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    const-string/jumbo v2, "action_key_selected_org_industry"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 410
    .local v1, "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    if-nez v1, :cond_1

    .line 428
    .end local v1    # "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local v1    # "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    if-eq v2, v3, :cond_0

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 416
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    goto :goto_0

    .line 420
    .end local v1    # "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    :cond_3
    const-string/jumbo v2, "selector_region"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const-string/jumbo v2, "region_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "addKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    const-string/jumbo v3, "tempCode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    goto :goto_0
.end method
