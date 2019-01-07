.class final Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConcernListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ConcernListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 66
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string/jumbo v7, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const-string/jumbo v7, "IDENTIFIY_CONCERN_LIST"

    const-string/jumbo v8, "activity_identify"

    .line 75
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    const-string/jumbo v7, "choose_user_identities"

    .line 81
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 82
    .local v0, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 85
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 86
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v4, :cond_0

    .line 90
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7, v4}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 95
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v7

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    new-instance v10, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;)V

    invoke-interface {v7, v8, v9, v10}, Lfac;->a(JLcma;)V

    goto :goto_0

    .line 114
    .end local v0    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const-string/jumbo v7, "com.workapp.concern.list.item.delete.and.unconcern"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    const-string/jumbo v7, "user_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    .local v2, "uid":J
    const-string/jumbo v7, "list_view_position"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, "position":I
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 118
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v8

    .line 1395
    if-ltz v1, :cond_0

    .line 1399
    iget-object v7, v8, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    new-instance v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;

    invoke-direct {v7, v8, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)V

    .line 1430
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1431
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v9

    const-class v10, Lcma;

    .line 1432
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-interface {v9, v7, v10, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 1434
    :cond_3
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v8

    invoke-virtual {v8, v2, v3, v7}, Lfln;->b(JLcma;)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "position":I
    .end local v2    # "uid":J
    :cond_4
    const-string/jumbo v7, "com.workapp.concern.list.item.delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 122
    const-string/jumbo v7, "list_view_position"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .restart local v1    # "position":I
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 124
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    .line 1438
    if-ltz v1, :cond_0

    .line 1442
    iget-object v8, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_5

    .line 1443
    iget-object v8, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1444
    iget-object v8, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a:Lfgh;

    invoke-virtual {v8}, Lfgh;->notifyDataSetChanged()V

    .line 1447
    :cond_5
    iget-object v8, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 1448
    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    goto/16 :goto_0

    .line 126
    .end local v1    # "position":I
    :cond_6
    const-string/jumbo v7, "com.workapp.concern.list.item.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    const-string/jumbo v7, "profile"

    .line 129
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 130
    .local v6, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 133
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 134
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v5, :cond_0

    .line 137
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 138
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v7

    .line 2387
    iget-object v8, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b:Ljava/util/List;

    invoke-interface {v8, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2388
    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c()V

    .line 2389
    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 2390
    iget-object v7, v7, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a:Lfgh;

    invoke-virtual {v7}, Lfgh;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
