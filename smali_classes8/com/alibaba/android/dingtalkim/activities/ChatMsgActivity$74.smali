.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;
.super Landroid/content/BroadcastReceiver;
.source "ChatMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 52
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    .line 1393
    .local v19, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    const-string/jumbo v4, "finish_chat"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto :goto_0

    .line 1402
    :cond_2
    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1403
    const-string/jumbo v4, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1404
    .local v31, "idenfier":Ljava/lang/String;
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_CONFERENCE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ACTIVITY_IDENTIFY_VIDEO_CONFERENCE"

    .line 1405
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ACTIVITY_IDENTIFY_VOIP_CONFERENCE"

    .line 1406
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1407
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v5, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)Ljava/util/List;

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v5, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1413
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    .line 1414
    .local v21, "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_5

    .line 1415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_4

    .line 1417
    const-string/jumbo v4, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1414
    :cond_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 1420
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1422
    .local v48, "uids":Ljava/lang/String;
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 1423
    .local v43, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "uids"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "{"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, "}"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 1427
    .local v27, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string/jumbo v4, "conference_from_home"

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1429
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_CONFERENCE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1430
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "meeting_creat_from_group"

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1431
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v11, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1432
    :cond_6
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_VOIP_CONFERENCE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1433
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_groupvoipcall_button_ok_click"

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1434
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v11, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1436
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_groupvideocall_button_ok_click"

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1437
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v11, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1441
    .end local v21    # "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v27    # "extras":Landroid/os/Bundle;
    .end local v30    # "i":I
    .end local v43    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v48    # "uids":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_AT"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v4

    const-string/jumbo v11, "intent_key_at_seed"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-nez v4, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v5, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)Ljava/util/List;

    .line 1447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto/16 :goto_0

    .line 1449
    .end local v31    # "idenfier":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "com.workapp.ding.settings"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v5, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)Ljava/util/List;

    .line 1452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v5, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V

    .line 1453
    const-string/jumbo v4, "ding_delay_time"

    const/16 v5, 0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1454
    const-string/jumbo v4, "is_ding_need_remind"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1458
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v49, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_b

    .line 1460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->b()Lchy;

    move-result-object v11

    invoke-virtual {v11}, Lchy;->getCurrentUid()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-eqz v4, :cond_a

    .line 1463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 1465
    :cond_b
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1466
    sget v4, Lctk$i;->ding_member_empty:I

    invoke-static {v4}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 1468
    .end local v30    # "i":I
    .end local v49    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_c
    const-string/jumbo v4, "com.workapp.conversation.title.CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1469
    const-string/jumbo v4, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1470
    .local v22, "cid":Ljava/lang/String;
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1471
    const-string/jumbo v4, "conversation_title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1472
    .local v40, "newTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, v40

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D:Ljava/lang/String;

    .line 1473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1475
    .end local v22    # "cid":Ljava/lang/String;
    .end local v40    # "newTitle":Ljava/lang/String;
    :cond_d
    const-string/jumbo v4, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1476
    const-string/jumbo v4, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1477
    .local v25, "desCid":Ljava/lang/String;
    const-string/jumbo v4, "is_enterprise_group"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    .line 1478
    .local v34, "isEnterprise":Z
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$1;

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1488
    .end local v25    # "desCid":Ljava/lang/String;
    .end local v34    # "isEnterprise":Z
    :cond_e
    const-string/jumbo v4, "com.workapp.conversation.FORWARD"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1489
    const-string/jumbo v4, "intent_key_menu_seed"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v36

    .line 1490
    .local v36, "menuSeed":J
    const-string/jumbo v4, "intent_key_im_forward_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v47

    .line 1491
    .local v47, "type":I
    const/4 v4, 0x2

    move/from16 v0, v47

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    cmp-long v4, v36, v4

    if-nez v4, :cond_0

    .line 1494
    :cond_f
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1495
    .restart local v22    # "cid":Ljava/lang/String;
    const-string/jumbo v4, "message_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1496
    .local v38, "mid":Ljava/lang/String;
    const-string/jumbo v4, "send_text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1497
    .local v20, "appendText":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    cmp-long v4, v4, v36

    if-nez v4, :cond_0

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v4, v12, v13, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1500
    .end local v20    # "appendText":Ljava/lang/String;
    .end local v22    # "cid":Ljava/lang/String;
    .end local v36    # "menuSeed":J
    .end local v38    # "mid":Ljava/lang/String;
    .end local v47    # "type":I
    :cond_10
    const-string/jumbo v4, "com.workapp.msg.at"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1502
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1503
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v12, 0x7

    cmp-long v4, v4, v12

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1504
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v12, 0xa

    cmp-long v4, v4, v12

    if-eqz v4, :cond_0

    .line 1505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v26

    .line 1506
    .local v26, "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    const-string/jumbo v4, "user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v51

    check-cast v51, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1507
    .local v51, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v51, :cond_0

    .line 1508
    invoke-static/range {v51 .. v51}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v50

    .line 1510
    .local v50, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v50, :cond_0

    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->AT_CONTENT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v4, v5}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v10

    .line 1512
    .local v10, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v11}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    move-object/from16 v0, v50

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v11, "EVENTBUTLER"

    .line 1513
    invoke-static {v11}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v26

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V

    const-class v13, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v11, v12, v13, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/Callback;

    .line 1512
    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 1538
    .end local v10    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .end local v26    # "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .end local v50    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v51    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_11
    const-string/jumbo v4, "com.workapp.msg.update"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "com.workapp.msg.sender.update"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1539
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v4, :cond_0

    .line 1540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v4}, Lcug;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1542
    :cond_13
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1543
    const-string/jumbo v4, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 1545
    .local v35, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v4, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1546
    .local v32, "identifier":Ljava/lang/String;
    if-eqz v35, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "ACTIVITY_IDENTIFY_NAME_CARD"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1547
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1548
    .restart local v50    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v50, :cond_0

    .line 1549
    new-instance v39, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-direct/range {v39 .. v39}, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;-><init>()V

    .line 1550
    .local v39, "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    move-object/from16 v0, v50

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-object/from16 v0, v39

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    .line 1551
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    move-object/from16 v0, v39

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    .line 1552
    move-object/from16 v0, v50

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1553
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    move-object/from16 v0, v39

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->phone:Ljava/lang/String;

    .line 1555
    :cond_14
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    move-object/from16 v0, v39

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    .line 1556
    const-string/jumbo v4, "third_msg"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1566
    .end local v32    # "identifier":Ljava/lang/String;
    .end local v35    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v39    # "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .end local v50    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_15
    const-string/jumbo v4, "com.workapp.msg.send"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1567
    const-string/jumbo v4, "msg_entity_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1568
    .local v6, "entitiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string/jumbo v4, "space_statistic_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1569
    .local v7, "spaceStatisticKey":Ljava/lang/String;
    const-string/jumbo v4, "space_transfer_src"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1570
    .local v8, "spaceStatisticSrc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v9

    .line 1571
    .local v9, "to":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1572
    const-string/jumbo v4, "third_msg"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v11

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1643
    .end local v6    # "entitiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v7    # "spaceStatisticKey":Ljava/lang/String;
    .end local v8    # "spaceStatisticSrc":Ljava/lang/String;
    .end local v9    # "to":Ljava/lang/String;
    :cond_16
    const-string/jumbo v4, "com.workapp.action.poi_info"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1644
    const-string/jumbo v4, "poi_info_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v42

    check-cast v42, Lcom/amap/api/services/core/PoiItem;

    .line 1645
    .local v42, "poiItem":Lcom/amap/api/services/core/PoiItem;
    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v4, :cond_0

    .line 1646
    const-string/jumbo v4, "map_longitude"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v16

    .line 1647
    .local v16, "longitude":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v16, v4

    if-nez v4, :cond_17

    .line 1648
    invoke-virtual/range {v42 .. v42}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v16

    .line 1651
    :cond_17
    const-string/jumbo v4, "map_latitude"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v14

    .line 1652
    .local v14, "latitude":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v14, v4

    if-nez v4, :cond_18

    .line 1653
    invoke-virtual/range {v42 .. v42}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v14

    .line 1656
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v12, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    const-string/jumbo v4, "location_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1657
    invoke-virtual/range {v42 .. v42}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 1656
    invoke-virtual/range {v12 .. v18}, Ldiz;->a(Ljava/lang/String;DDLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1659
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    .end local v42    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    :cond_19
    const-string/jumbo v4, "com.workapp.org.sync"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    goto/16 :goto_0

    .line 1661
    :cond_1a
    const-string/jumbo v4, "com.workapp.org_employee_change"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    goto/16 :goto_0

    .line 1663
    :cond_1b
    const-string/jumbo v4, "action_decrypt_msg_in_conversation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1665
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1666
    .restart local v22    # "cid":Ljava/lang/String;
    const-string/jumbo v4, "corp_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1667
    .local v24, "corpId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldjl;->s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v23

    .line 1669
    .local v23, "convCorpId":Ljava/lang/String;
    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_1c
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1670
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->s(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v4}, Lcug;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1674
    .end local v22    # "cid":Ljava/lang/String;
    .end local v23    # "convCorpId":Ljava/lang/String;
    .end local v24    # "corpId":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "choose_files_uris"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 1676
    .local v29, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1677
    .end local v29    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1f
    const-string/jumbo v4, "intent_key_back_to_chat_msg_activity_show_keyboard"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto/16 :goto_0

    .line 1680
    :cond_20
    sget-object v4, Lhcp;->d:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1682
    sget-object v4, Lhcp;->f:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v47

    check-cast v47, Lcom/alibaba/dingtalk/doclens/DocFileType;

    .line 1683
    .local v47, "type":Lcom/alibaba/dingtalk/doclens/DocFileType;
    sget-object v4, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    move-object/from16 v0, v47

    if-ne v0, v4, :cond_21

    .line 1684
    sget-object v4, Lhcp;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1685
    .local v28, "filePath":Ljava/lang/String;
    const-class v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1693
    .end local v28    # "filePath":Ljava/lang/String;
    :cond_21
    sget-object v4, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    move-object/from16 v0, v47

    if-ne v0, v4, :cond_0

    .line 1694
    sget-object v4, Lhcp;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v46

    .line 1695
    .local v46, "s":Ljava/io/Serializable;
    if-eqz v46, :cond_0

    move-object/from16 v0, v46

    instance-of v4, v0, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1697
    :try_start_0
    move-object/from16 v0, v46

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 1698
    .local v33, "imagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v45, Ljava/util/ArrayList;

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1699
    .local v45, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_22

    .line 1700
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 1701
    .local v41, "path":Ljava/lang/String;
    new-instance v44, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct/range {v44 .. v44}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 1702
    .local v44, "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    move-object/from16 v0, v41

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 1703
    move-object/from16 v0, v41

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 1704
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput v4, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 1705
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1707
    .end local v41    # "path":Ljava/lang/String;
    .end local v44    # "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v5, 0x1

    move-object/from16 v0, v45

    invoke-static {v4, v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v30    # "i":I
    .end local v33    # "imagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
