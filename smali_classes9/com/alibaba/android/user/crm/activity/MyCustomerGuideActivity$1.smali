.class final Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MyCustomerGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "IDENTIFIY_MY_CUSTOMER_GUIDE_ACTIVITY"

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_user_identities"

    .line 101
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 102
    .local v9, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v5, 0x0

    .line 103
    .local v5, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .restart local v5    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 106
    .local v10, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v10, :cond_2

    iget-object v2, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v10    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_department_array"

    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 115
    .local v8, "deptObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v4, 0x0

    .line 116
    .local v4, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_5

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .restart local v4    # "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 119
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_4

    .line 122
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_5
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;)V

    const-class v3, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-interface {v1, v2, v3, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 151
    .local v7, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->showLoadingDialog()V

    .line 152
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->a(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JLjava/util/List;Ljava/util/List;ZLcma;)V

    goto/16 :goto_0
.end method
