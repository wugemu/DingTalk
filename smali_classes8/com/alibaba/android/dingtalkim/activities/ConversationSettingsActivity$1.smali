.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.workapp.conversation.member.CHANGED"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    const-string/jumbo v4, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, "cid":Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 506
    .end local v17    # "cid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 357
    .restart local v17    # "cid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "conversation_members"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 358
    .local v25, "members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const-string/jumbo v4, "conversation_total_members_count"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 359
    .local v31, "totalNumber":I
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "member, Receive ACTION_CONVERSATION_MEMBERS_CHANGED, list has "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u4eba, total member "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u4eba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v4, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;I)V

    goto :goto_0

    .line 361
    .end local v17    # "cid":Ljava/lang/String;
    .end local v25    # "members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local v31    # "totalNumber":I
    :cond_2
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 364
    const-string/jumbo v4, "IDENTIFIY_CONVERSATION_SETTING"

    const-string/jumbo v5, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "choose_user_ids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v24

    .line 368
    .local v24, "ids":[J
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_0

    .line 371
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v34, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, v24

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-wide v20, v24, v4

    .line 373
    .local v20, "id":J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 376
    .end local v20    # "id":J
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v23

    .line 377
    .local v23, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 378
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 379
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 380
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 383
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-static {v4, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 385
    .end local v23    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v24    # "ids":[J
    .end local v34    # "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 386
    const-string/jumbo v4, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 387
    .local v22, "idenfier":Ljava/lang/String;
    const-string/jumbo v4, "activity_identify_transfer_success"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget-object v5, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Member$RoleType;)Lcom/alibaba/wukong/im/Member$RoleType;

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    goto/16 :goto_0

    .line 391
    :cond_6
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_TRANSMIT"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 392
    const-string/jumbo v4, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 394
    .local v30, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v30, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 395
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v32, v0

    .line 396
    .local v32, "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 397
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 400
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 401
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v6}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    .line 402
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;J)V

    .line 400
    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 451
    .end local v30    # "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v32    # "uid":J
    :cond_7
    const-string/jumbo v4, "activity_identify_remove"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    const-string/jumbo v4, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 455
    .restart local v30    # "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v30, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    .line 457
    .local v18, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_8

    .line 458
    const/4 v4, 0x2

    move/from16 v0, v19

    if-le v0, v4, :cond_9

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v5, Lctk$i;->dt_ding_send_to_suffix_fmt:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 471
    :cond_8
    new-instance v16, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v16, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v5, Lctk$i;->remove_member:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lctk$i;->sure:I

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;Ljava/util/List;)V

    .line 473
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lctk$i;->cancel:I

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;)V

    .line 480
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 486
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 462
    .end local v16    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_9
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 465
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 466
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    .line 467
    const-string/jumbo v4, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 457
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 490
    .end local v18    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v19    # "i":I
    .end local v22    # "idenfier":Ljava/lang/String;
    .end local v30    # "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_b
    const-string/jumbo v4, "action_group_nick_updated"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 491
    const-string/jumbo v4, "intent_key_modify_group_nick_seed"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    .line 492
    .local v28, "seed":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v28

    if-nez v4, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    goto/16 :goto_0

    .line 495
    .end local v28    # "seed":J
    :cond_c
    const-string/jumbo v4, "action_announce_send_success"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 496
    const-string/jumbo v4, "intent_key_announce_seed"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 497
    .local v14, "announceSeed":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-nez v4, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->finish()V

    goto/16 :goto_0

    .line 500
    .end local v14    # "announceSeed":J
    :cond_d
    const-string/jumbo v4, "intent_action_chat_theme_applied"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "intent_key_menu_seed"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v26

    .line 502
    .local v26, "menuSeed":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v26

    if-nez v4, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->finish()V

    goto/16 :goto_0
.end method
