.class final Ldea$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatSendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldea;


# direct methods
.method constructor <init>(Ldea;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 156
    iput-object p1, p0, Ldea$1;->a:Ldea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 1095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 160
    invoke-interface {v5}, Lddz$b;->d()Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string/jumbo v5, "finish_chat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 2095
    iget-object v5, v5, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 164
    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Ldea$1;->a:Ldea;

    .line 3095
    iget-object v8, v8, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 164
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v8

    if-ne v5, v8, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 4095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 165
    invoke-interface {v5}, Lddz$b;->g()V

    goto :goto_0

    .line 167
    :cond_2
    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 168
    const-string/jumbo v5, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 169
    .local v24, "idenfier":Ljava/lang/String;
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_CONFERENCE"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ACTIVITY_IDENTIFY_VIDEO_CONFERENCE"

    .line 170
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ACTIVITY_IDENTIFY_VOIP_CONFERENCE"

    .line 171
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    const-string/jumbo v8, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5095
    iput-object v8, v5, Ldea;->f:Ljava/util/List;

    .line 174
    const-string/jumbo v5, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 6095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 175
    invoke-interface {v5, v10}, Lddz$b;->a(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_CONFERENCE"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v9, v0, Ldea$1;->a:Ldea;

    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 7095
    iget-object v12, v5, Ldea;->f:Ljava/util/List;

    .line 7923
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 7924
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v13

    .line 7925
    const/4 v5, 0x0

    move v8, v5

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_5

    .line 7926
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v14, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7927
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v8, v5, :cond_4

    .line 7928
    const-string/jumbo v5, ","

    invoke-virtual {v13, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7925
    :cond_4
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_1

    .line 7931
    :cond_5
    invoke-virtual {v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7933
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 7934
    const-string/jumbo v13, "uids"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "{"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, "}"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7935
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v13, "meeting_creat_from_group"

    invoke-interface {v5, v13, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7937
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7938
    const-string/jumbo v8, "conversation_id"

    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7939
    const-string/jumbo v8, "conference_from_home"

    const/4 v13, 0x0

    invoke-virtual {v5, v8, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7940
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v8

    iget-object v9, v9, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v8, v9, v12, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 178
    :cond_6
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_VOIP_CONFERENCE"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    move-object/from16 v0, p0

    iget-object v8, v0, Ldea$1;->a:Ldea;

    .line 8095
    iget-object v8, v8, Ldea;->f:Ljava/util/List;

    .line 179
    invoke-virtual {v5, v10, v8}, Ldea;->b(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 181
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    move-object/from16 v0, p0

    iget-object v8, v0, Ldea$1;->a:Ldea;

    .line 9095
    iget-object v8, v8, Ldea;->f:Ljava/util/List;

    .line 181
    invoke-virtual {v5, v10, v8}, Ldea;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 183
    .end local v10    # "cid":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_AT"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    const-string/jumbo v5, "intent_key_at_seed"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 185
    .local v20, "atSeed":J
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    const-string/jumbo v8, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 10095
    iput-object v8, v5, Ldea;->f:Ljava/util/List;

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 11095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 186
    move-object/from16 v0, p0

    iget-object v8, v0, Ldea$1;->a:Ldea;

    .line 12095
    iget-object v8, v8, Ldea;->f:Ljava/util/List;

    .line 186
    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1, v8}, Lddz$b;->a(JLjava/util/List;)V

    goto/16 :goto_0

    .line 188
    .end local v20    # "atSeed":J
    .end local v24    # "idenfier":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "com.workapp.ding.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    const-string/jumbo v8, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 13095
    iput-object v8, v5, Ldea;->f:Ljava/util/List;

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 14095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 191
    const-string/jumbo v8, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lddz$b;->a(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v5, "ding_delay_time"

    const/16 v8, 0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 193
    const-string/jumbo v5, "is_ding_need_remind"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 197
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v31, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 15095
    iget-object v5, v5, Ldea;->f:Ljava/util/List;

    .line 198
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v23

    if-ge v0, v5, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 16095
    iget-object v5, v5, Ldea;->f:Ljava/util/List;

    .line 199
    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v12

    cmp-long v5, v8, v12

    if-eqz v5, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 17095
    iget-object v5, v5, Ldea;->f:Ljava/util/List;

    .line 202
    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 204
    :cond_b
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 18095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 205
    const-string/jumbo v8, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v12, Lctk$i;->ding_member_empty:I

    invoke-virtual {v9, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    .end local v23    # "i":I
    .end local v31    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_c
    const-string/jumbo v5, "com.workapp.conversation.FORWARD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 208
    const-string/jumbo v5, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 209
    .restart local v10    # "cid":Ljava/lang/String;
    const-string/jumbo v5, "message_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 210
    .local v27, "mid":Ljava/lang/String;
    const-string/jumbo v5, "intent_key_menu_seed"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 211
    .local v6, "menuSeed":J
    const-string/jumbo v5, "send_text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "appendText":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 19095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 213
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface/range {v5 .. v11}, Lddz$b;->a(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v6    # "menuSeed":J
    .end local v10    # "cid":Ljava/lang/String;
    .end local v11    # "appendText":Ljava/lang/String;
    .end local v27    # "mid":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, "com.workapp.msg.at"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 20095
    iget-object v5, v5, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 216
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 21095
    iget-object v5, v5, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 217
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 22095
    iget-object v5, v5, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 218
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v12, 0x7

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 23095
    iget-object v5, v5, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 219
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v12, 0xa

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 220
    const-string/jumbo v5, "user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 221
    .local v32, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 24095
    iget-object v5, v5, Ldea;->b:Lddz$b;

    .line 221
    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Lddz$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .line 223
    .end local v32    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_e
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 224
    const-string/jumbo v5, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 226
    .local v26, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v5, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 227
    .local v25, "identifier":Ljava/lang/String;
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_NAME_CARD"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    .line 24585
    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 24588
    const-string/jumbo v8, "ChatSendPresenter"

    invoke-static {v8}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v9, Ldea$14;

    move-object/from16 v0, v26

    invoke-direct {v9, v5, v0}, Ldea$14;-><init>(Ldea;Ljava/util/List;)V

    invoke-interface {v8, v9}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 230
    .end local v25    # "identifier":Ljava/lang/String;
    .end local v26    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_f
    const-string/jumbo v5, "com.workapp.msg.send"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 231
    const-string/jumbo v5, "msg_entity_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 232
    .local v19, "entitiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string/jumbo v5, "space_statistic_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 233
    .local v29, "spaceStatisticKey":Ljava/lang/String;
    const-string/jumbo v5, "space_transfer_src"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 234
    .local v30, "spaceStatisticSrc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ldea;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .end local v19    # "entitiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v29    # "spaceStatisticKey":Ljava/lang/String;
    .end local v30    # "spaceStatisticSrc":Ljava/lang/String;
    :cond_10
    const-string/jumbo v5, "com.workapp.action.poi_info"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 236
    const-string/jumbo v5, "poi_info_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Lcom/amap/api/services/core/PoiItem;

    .line 237
    .local v28, "poiItem":Lcom/amap/api/services/core/PoiItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldea$1;->a:Ldea;

    const-string/jumbo v8, "location_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24611
    if-eqz v28, :cond_0

    .line 24612
    invoke-virtual {v5}, Ldea;->a()Ldiz;

    move-result-object v12

    invoke-virtual/range {v28 .. v28}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {v28 .. v28}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v16

    invoke-virtual/range {v28 .. v28}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v12 .. v18}, Ldiz;->a(Ljava/lang/String;DDLjava/lang/String;)Z

    goto/16 :goto_0

    .line 238
    .end local v28    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    :cond_11
    invoke-static {}, Lddq;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v8, "choose_files_uris"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 240
    .local v22, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 241
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v8, Ldea$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Ldea$1$1;-><init>(Ldea$1;Ljava/util/ArrayList;)V

    invoke-interface {v5, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
