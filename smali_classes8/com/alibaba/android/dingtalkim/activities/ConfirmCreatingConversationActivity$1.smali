.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmCreatingConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v15, "com.workapp.choose.people.from.contact"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 147
    const-string/jumbo v15, "confirm"

    const-string/jumbo v16, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "choose_user_ids"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 151
    .local v8, "ids":[J
    if-eqz v8, :cond_0

    array-length v15, v8

    if-lez v15, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 155
    array-length v0, v8

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-wide v6, v8, v15

    .line 156
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 158
    .end local v6    # "id":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccr;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lccr;->c()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 161
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "choose_user_identities"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 162
    .local v5, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v15

    invoke-virtual {v15}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v10

    .line 163
    .local v10, "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 164
    const/4 v15, 0x0

    invoke-interface {v5, v15, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    goto/16 :goto_0

    .line 169
    .end local v5    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v8    # "ids":[J
    .end local v10    # "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    const-string/jumbo v15, "action_select_contact_result"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 170
    const-string/jumbo v15, "confirm"

    const-string/jumbo v16, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 171
    const-string/jumbo v15, "key_selected_user_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 172
    .local v14, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 175
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v9, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 177
    .local v11, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v11, :cond_6

    .line 178
    iget-wide v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 181
    .end local v11    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccr;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lccr;->c()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    :cond_8
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v15

    invoke-virtual {v15}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v10

    .line 187
    .restart local v10    # "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 188
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 190
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    goto/16 :goto_0

    .line 195
    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v14    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_a
    const-string/jumbo v15, "action_group_type_selected"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-string/jumbo v16, "intent_key_conversation_tag"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ldjl;->a(J)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 198
    const-string/jumbo v15, "intent_key_group_org_owner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 199
    .local v12, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v12, :cond_b

    iget-wide v0, v12, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_b

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    iget-wide v0, v12, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v12    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Z

    goto/16 :goto_0

    .line 204
    .restart local v12    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    goto :goto_3

    .line 207
    .end local v12    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ldjl;->b(J)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 208
    const-string/jumbo v15, "intent_key_group_org_select"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 209
    .local v13, "orgIdNameObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;"
    if-eqz v13, :cond_d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 213
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    goto :goto_3

    .line 217
    .end local v13    # "orgIdNameObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    goto/16 :goto_3
.end method
