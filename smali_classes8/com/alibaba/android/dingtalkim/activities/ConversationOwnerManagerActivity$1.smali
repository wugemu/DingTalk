.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationOwnerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const-string/jumbo v4, "activity_identify"

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 198
    .local v15, "idenfier":Ljava/lang/String;
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_TRANSMIT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const-string/jumbo v4, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 201
    .local v16, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 202
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v18, v0

    .line 203
    .local v18, "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .line 204
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->showLoadingDialog()V

    .line 207
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .line 208
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-static {v6}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    .line 209
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;J)V

    .line 207
    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    .line 263
    .end local v15    # "idenfier":Ljava/lang/String;
    .end local v16    # "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v18    # "uid":J
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string/jumbo v4, "action_group_ring_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const-string/jumbo v4, "intent_key_group_ring_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, "groupRingId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v4, v14}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
