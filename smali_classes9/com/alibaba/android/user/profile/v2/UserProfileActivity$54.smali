.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;
.super Landroid/content/BroadcastReceiver;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 4242
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4245
    const-string/jumbo v11, "com.workapp.alias_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4246
    const-string/jumbo v11, "user_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4247
    .local v2, "changedId":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 4248
    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    iget-wide v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v11, v2, v14

    if-eqz v11, :cond_1

    .line 4342
    .end local v2    # "changedId":J
    :cond_0
    :goto_0
    return-void

    .line 4251
    .restart local v2    # "changedId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    const-string/jumbo v14, "user_alias"

    .line 4252
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 4253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    const-string/jumbo v14, "user_aliaspinyin"

    .line 4254
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->aliasPinyin:Ljava/lang/String;

    .line 4256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->q(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->i(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)V

    .line 4257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->M(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto :goto_0

    .line 4258
    .end local v2    # "changedId":J
    :cond_2
    const-string/jumbo v11, "com.workapp.user_profile_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->Y(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto :goto_0

    .line 4260
    :cond_3
    const-string/jumbo v11, "action_friend_request_status_changed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4261
    const-string/jumbo v11, "user_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 4262
    .local v12, "uid":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 4263
    const-string/jumbo v11, "friend_request_status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 4264
    .local v10, "status":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 4265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->Y(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto/16 :goto_0

    .line 4267
    .end local v10    # "status":I
    .end local v12    # "uid":J
    :cond_4
    const-string/jumbo v11, "finish_chat"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->finish()V

    goto/16 :goto_0

    .line 4269
    :cond_5
    const-string/jumbo v11, "com.workapp.concern.list.item.add"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "com.workapp.concern.list.item.delete"

    .line 4270
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "com.workapp.black.list.item.add"

    .line 4271
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "com.workapp.black.list.item.delete"

    .line 4272
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4273
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->Z(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto/16 :goto_0

    .line 4274
    :cond_7
    const-string/jumbo v11, "action_share_mobile"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const-string/jumbo v14, "intent_key_share_mobile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v15}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->T(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Z)Z

    goto/16 :goto_0

    .line 4276
    :cond_8
    const-string/jumbo v11, "com.workapp.org.external.update"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4278
    const-string/jumbo v11, "employee_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4279
    .local v7, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    .line 4282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4286
    const/4 v4, 0x0

    .line 4287
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4288
    .local v6, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_9

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 4289
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 4293
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 4294
    goto :goto_1

    .line 4295
    .end local v4    # "index":I
    .end local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_a
    const-string/jumbo v11, "com.workapp.org.external.added"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4296
    const-string/jumbo v11, "employee_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4297
    .restart local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    iget-wide v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    .line 4300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_b

    .line 4301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4303
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4304
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 4305
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_c
    const-string/jumbo v11, "com.workapp.org.external.delete"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4306
    const-string/jumbo v11, "employee_info"

    .line 4307
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4308
    .restart local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    .line 4311
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4316
    .restart local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_d

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_d

    .line 4317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->finish()V

    goto/16 :goto_0

    .line 4321
    .end local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_e
    const-string/jumbo v11, "action_key_select_labels"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4322
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4324
    const-string/jumbo v11, "org_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 4325
    .local v8, "orgId":J
    const-string/jumbo v11, "intent_key_label_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4326
    .local v5, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-eqz v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4333
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4334
    .restart local v6    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_f

    iget-wide v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v14, v14, v8

    if-nez v14, :cond_f

    .line 4335
    iput-object v5, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 4336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$54;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11, v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto/16 :goto_0
.end method
