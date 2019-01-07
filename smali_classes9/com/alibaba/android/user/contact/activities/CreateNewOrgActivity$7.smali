.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "CreateNewOrgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 742
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "choose_user_identities"

    .line 744
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 745
    .local v2, "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "activity_identify"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "flag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)V

    .line 764
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 748
    .restart local v1    # "flag":Ljava/lang/String;
    .restart local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    sget-object v3, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v2, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 751
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    const-string/jumbo v3, "action_key_select_org_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 752
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    const-string/jumbo v3, "action_key_selected_org_industry"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-static {v4, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 754
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 755
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v5, v6, v7, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 757
    :cond_4
    const-string/jumbo v3, "selector_region"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    const-string/jumbo v3, "region_key"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "addKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->o(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    goto/16 :goto_0
.end method
