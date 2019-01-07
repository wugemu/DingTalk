.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "CreateOrgV4AddMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "choose_user_identities"

    .line 223
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "activity_identify"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "flag":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_job_position_code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/model/PositionData;

    .line 226
    .local v2, "positionData":Lcom/alibaba/android/user/model/PositionData;
    if-eqz v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 229
    :cond_0
    const-string/jumbo v3, "identity_create_org_add_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "identity_create_org_add_admin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    invoke-static {v3, v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 235
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_2
    :goto_0
    return-void

    .line 231
    .restart local v0    # "flag":Ljava/lang/String;
    .restart local v1    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v2    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_3
    const-string/jumbo v3, "identity_create_org_manual_add_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "identity_create_org_manual_add_admin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v1, v4, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method
