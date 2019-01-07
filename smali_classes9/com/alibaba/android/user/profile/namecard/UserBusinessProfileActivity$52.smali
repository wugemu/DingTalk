.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;
.super Landroid/content/BroadcastReceiver;
.source "UserBusinessProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 4311
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4314
    const-string/jumbo v11, "com.workapp.alias_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4315
    const-string/jumbo v11, "user_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4316
    .local v2, "changedId":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 4317
    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    iget-wide v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v11, v2, v14

    if-eqz v11, :cond_1

    .line 4412
    .end local v2    # "changedId":J
    :cond_0
    :goto_0
    return-void

    .line 4320
    .restart local v2    # "changedId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    const-string/jumbo v14, "user_alias"

    .line 4321
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 4322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    const-string/jumbo v14, "user_aliaspinyin"

    .line 4323
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->aliasPinyin:Ljava/lang/String;

    .line 4325
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->S(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/lang/String;)V

    .line 4326
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->H(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    goto :goto_0

    .line 4327
    .end local v2    # "changedId":J
    :cond_2
    const-string/jumbo v11, "com.workapp.user_profile_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "com.workapp.PROFILE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4328
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->T(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    goto :goto_0

    .line 4329
    :cond_4
    const-string/jumbo v11, "action_friend_request_status_changed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4330
    const-string/jumbo v11, "user_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 4331
    .local v12, "uid":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 4332
    const-string/jumbo v11, "friend_request_status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 4333
    .local v10, "status":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 4334
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->T(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    goto/16 :goto_0

    .line 4336
    .end local v10    # "status":I
    .end local v12    # "uid":J
    :cond_5
    const-string/jumbo v11, "finish_chat"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->finish()V

    goto/16 :goto_0

    .line 4338
    :cond_6
    const-string/jumbo v11, "com.workapp.concern.list.item.add"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "com.workapp.concern.list.item.delete"

    .line 4339
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "com.workapp.black.list.item.add"

    .line 4340
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "com.workapp.black.list.item.delete"

    .line 4341
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 4343
    const-string/jumbo v11, "action_share_mobile"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    const-string/jumbo v14, "intent_key_share_mobile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v15}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->M(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Z

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Z)Z

    goto/16 :goto_0

    .line 4345
    :cond_7
    const-string/jumbo v11, "com.workapp.org.external.update"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4347
    const-string/jumbo v11, "employee_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4348
    .local v7, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    .line 4351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4355
    .local v6, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_8

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_8

    .line 4356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->finish()V

    goto/16 :goto_0

    .line 4360
    .end local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_9
    const-string/jumbo v11, "com.workapp.org.external.added"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4361
    const-string/jumbo v11, "employee_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4362
    .restart local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    iget-wide v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    .line 4365
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_a

    .line 4366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4368
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 4370
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_b
    const-string/jumbo v11, "com.workapp.org.external.delete"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 4371
    const-string/jumbo v11, "employee_info"

    .line 4372
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4373
    .restart local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    .line 4376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4381
    .restart local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_c

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_c

    .line 4382
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-virtual {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->finish()V

    goto/16 :goto_0

    .line 4386
    .end local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_d
    const-string/jumbo v11, "action_key_select_labels"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4387
    const-string/jumbo v11, "UserBusinessProfileActivity"

    const-string/jumbo v14, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4389
    const-string/jumbo v11, "org_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 4390
    .local v8, "orgId":J
    const-string/jumbo v11, "intent_key_label_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4391
    .local v5, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-eqz v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4394
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->F(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4399
    .restart local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_e

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v14, v14, v8

    if-nez v14, :cond_e

    .line 4400
    iput-object v5, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 4401
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto/16 :goto_0

    .line 4406
    .end local v5    # "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    .end local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v8    # "orgId":J
    :cond_f
    const-string/jumbo v11, "SET_FRIEND_NOTE_AND_LABEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 4407
    const-string/jumbo v11, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4408
    .local v4, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4409
    .end local v4    # "data":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "action_settings_card_update"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$52;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->U(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    goto/16 :goto_0
.end method
