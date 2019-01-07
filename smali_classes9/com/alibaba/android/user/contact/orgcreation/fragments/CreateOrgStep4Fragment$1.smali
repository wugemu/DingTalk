.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CreateOrgStep4Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 2124
    :cond_0
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "isDestroyed or intent null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    :cond_1
    :goto_0
    return-void

    .line 2128
    :cond_2
    const-string/jumbo v0, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2129
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "cos3_add_member_fragment_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2131
    :cond_3
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "bad action"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2135
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "choose_user_identities"

    .line 2136
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2139
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2140
    if-eqz v0, :cond_5

    .line 2143
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v1, v9, :cond_5

    .line 2144
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2146
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_1

    .line 2148
    :cond_6
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_1

    .line 2153
    :cond_7
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2154
    if-lez v1, :cond_1

    .line 2155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 2156
    if-eqz v0, :cond_8

    .line 2158
    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->fromUserIdentityObjectList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2159
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    .line 2160
    const-string/jumbo v4, "intent_key_is_increment"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 2161
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2165
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .line 3075
    iput-boolean v9, v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 2166
    const-string/jumbo v2, "cre_org_v2"

    const-string/jumbo v3, "depId=%d,size=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2168
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->b(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;

    .line 2169
    if-eqz v0, :cond_1

    .line 2170
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2163
    :cond_9
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptMembers(Ljava/util/ArrayList;)V

    goto :goto_2
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
    .line 77
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->F()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const-string/jumbo v4, "activity_identify"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "identify":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "cos3_add_member_fragment_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 84
    :cond_2
    const-string/jumbo v4, "cre_org_v2"

    const-string/jumbo v5, "bad action"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "choose_user_identities"

    .line 88
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    .local v1, "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 92
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_4

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 93
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1656
    sget-object v5, Lfbk$a;->a:Lfbk;

    .line 97
    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;Landroid/content/Context;Landroid/content/Intent;)V

    const-class v6, Lcma;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .line 116
    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 97
    invoke-static {v4, v6, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-virtual {v5, v2, v4}, Lfbk;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
