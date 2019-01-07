.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;
.super Landroid/content/BroadcastReceiver;
.source "CreateOrgActivityV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
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
    .line 972
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 975
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 976
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "choose_user_identities"

    .line 977
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 978
    .local v2, "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "flag":Ljava/lang/String;
    const-string/jumbo v5, "intent_key_job_position_code"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/model/PositionData;

    .line 980
    .local v4, "positionData":Lcom/alibaba/android/user/model/PositionData;
    if-eqz v4, :cond_0

    .line 981
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5, v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 983
    :cond_0
    const-string/jumbo v5, "identity_create_org_add_member"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "identity_create_org_add_admin"

    .line 984
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 985
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5, v2, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;Ljava/lang/String;)V

    .line 1010
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v4    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_2
    :goto_0
    return-void

    .line 986
    .restart local v1    # "flag":Ljava/lang/String;
    .restart local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v4    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_3
    const-string/jumbo v5, "identity_create_org_manual_add_member"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "identity_create_org_manual_add_admin"

    .line 987
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 988
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v2, v6, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 990
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v4    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_5
    const-string/jumbo v5, "action_key_select_org_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 991
    const-string/jumbo v5, "action_key_selected_org_industry"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 993
    .local v3, "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    if-eqz v3, :cond_2

    .line 997
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v6

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    if-eq v5, v6, :cond_2

    .line 998
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 999
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    iget v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, v7, v8, v9, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1000
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->w(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    goto :goto_0

    .line 999
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 1002
    .end local v3    # "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    :cond_8
    const-string/jumbo v5, "selector_region"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    const-string/jumbo v5, "region_key"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "addKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    const-string/jumbo v6, "tempCode"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1006
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    goto/16 :goto_0
.end method
