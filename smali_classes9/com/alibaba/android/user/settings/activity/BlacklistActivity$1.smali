.class final Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BlacklistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/BlacklistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

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
    .line 59
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v8, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 67
    const-string/jumbo v8, "IDENTIFIY_BLACK_LIST"

    const-string/jumbo v9, "activity_identify"

    .line 68
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "choose_user_identities"

    .line 74
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .local v1, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 78
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 79
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    .line 83
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8, v3}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 87
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 88
    new-instance v0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1$1;-><init>(Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;)V

    .line 104
    .local v0, "apiEventListener":Lcma;
    const-string/jumbo v8, "EVENTBUTLER"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v9, Lcma;

    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-interface {v8, v0, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 105
    .restart local v0    # "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v8, v10, v11, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 109
    .end local v0    # "apiEventListener":Lcma;
    .end local v1    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const-string/jumbo v8, "com.workapp.black.list.item.delete.and.unblacking"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    const-string/jumbo v8, "user_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 111
    .local v4, "uid":J
    const-string/jumbo v8, "list_view_position"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 112
    .local v2, "position":I
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 113
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v10

    .line 1373
    if-ltz v2, :cond_0

    .line 1377
    iget-object v8, v10, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    new-instance v9, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;

    invoke-direct {v9, v10, v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)V

    .line 1407
    invoke-virtual {v10}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1408
    const-string/jumbo v8, "EVENTBUTLER"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v11, Lcma;

    invoke-virtual {v10}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-interface {v8, v9, v11, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 1410
    :goto_1
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v9

    invoke-virtual {v9, v4, v5, v8}, Lfwv;->b(JLcma;)V

    goto/16 :goto_0

    .line 116
    .end local v2    # "position":I
    .end local v4    # "uid":J
    :cond_3
    const-string/jumbo v8, "com.workapp.black.list.item.delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 117
    const-string/jumbo v8, "list_view_position"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .restart local v2    # "position":I
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 119
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    .line 1415
    iget-object v9, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v2, :cond_4

    .line 1416
    iget-object v9, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1417
    iget-object v9, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a:Lfwg;

    invoke-virtual {v9}, Lfwg;->notifyDataSetChanged()V

    .line 1420
    :cond_4
    iget-object v9, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_0

    .line 1421
    invoke-virtual {v8}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    goto/16 :goto_0

    .line 121
    .end local v2    # "position":I
    :cond_5
    const-string/jumbo v8, "com.workapp.black.list.item.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "profile"

    .line 124
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 125
    .local v7, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 128
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 129
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_0

    .line 132
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 133
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v8

    .line 2365
    iget-object v9, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2366
    invoke-virtual {v8}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c()V

    .line 2367
    invoke-virtual {v8}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 2368
    iget-object v8, v8, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a:Lfwg;

    invoke-virtual {v8}, Lfwg;->notifyDataSetChanged()V

    goto/16 :goto_0

    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v7    # "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .restart local v2    # "position":I
    .restart local v4    # "uid":J
    :cond_6
    move-object v8, v9

    goto/16 :goto_1
.end method
