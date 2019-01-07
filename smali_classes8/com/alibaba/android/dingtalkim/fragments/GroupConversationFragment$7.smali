.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcvu;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcvu;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 379
    .local v5, "conversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    instance-of v13, v13, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    if-eqz v13, :cond_12

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->l(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v13

    if-eqz v13, :cond_0

    if-nez v5, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v4, 0x0

    .line 386
    .local v4, "cid":Ljava/lang/String;
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v13, :cond_4

    .line 387
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    .line 392
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/HashSet;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->m(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 396
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcvu$a;

    .line 397
    .local v6, "groupHolder":Lcvu$a;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/lang/String;)Z

    .line 399
    if-eqz v6, :cond_0

    iget-object v13, v6, Lcvu$a;->e:Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    .line 400
    iget-object v13, v6, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 388
    .end local v6    # "groupHolder":Lcvu$a;
    :cond_4
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v13, :cond_2

    .line 389
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "cid"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cid":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "cid":Ljava/lang/String;
    goto :goto_1

    .line 403
    .restart local v6    # "groupHolder":Lcvu$a;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v13

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z

    move-result v1

    .line 404
    .local v1, "added":Z
    if-eqz v6, :cond_0

    iget-object v13, v6, Lcvu$a;->e:Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    .line 405
    iget-object v13, v6, Lcvu$a;->e:Landroid/widget/CheckBox;

    invoke-virtual {v13, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 408
    .end local v1    # "added":Z
    .end local v4    # "cid":Ljava/lang/String;
    .end local v6    # "groupHolder":Lcvu$a;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->n(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13, v5}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 410
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->o(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "message_id"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13, v5, v8}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v8    # "msgId":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "from_share"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 414
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "action_share"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "conversation"

    iget-object v14, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v7}, Ldq;->a(Landroid/content/Intent;)Z

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 418
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->p(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 419
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "choose_people_from_contact_logic"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    .line 420
    .local v10, "serializableCallback":Ljava/io/Serializable;
    if-eqz v10, :cond_d

    instance-of v13, v10, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v13, :cond_d

    .line 421
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const-string/jumbo v13, "choose_enterprise_group_conversation"

    :goto_2
    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "conversation"

    iget-object v14, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v3, v10

    .line 424
    check-cast v3, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 425
    .local v3, "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-interface {v3, v13, v14}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 421
    .end local v3    # "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_c
    const-string/jumbo v13, "intent_key_group_selection_do_logic"

    goto :goto_2

    .line 427
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 429
    .end local v10    # "serializableCallback":Ljava/io/Serializable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->q(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "intent_direct_open_conversation_logic"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    .line 431
    .local v9, "serializable":Ljava/io/Serializable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "key_direct_uri"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 432
    .local v12, "uriParam":Ljava/lang/String;
    instance-of v13, v9, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v13, :cond_f

    .line 433
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 434
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "key_direct_uri"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string/jumbo v13, "conversation"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    check-cast v9, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .end local v9    # "serializable":Ljava/io/Serializable;
    invoke-static {v13, v9}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->r(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    .line 439
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 443
    .end local v12    # "uriParam":Ljava/lang/String;
    :cond_10
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 444
    const-string/jumbo v13, "NAVIGATOR"

    invoke-static {v13}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v13

    const-string/jumbo v14, "https://qr.dingtalk.com/im/children_list.html"

    new-instance v15, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-interface {v13, v14, v15}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 476
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 453
    :cond_11
    iget-object v13, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 456
    const-string/jumbo v13, "NAVIGATOR"

    invoke-static {v13}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v13

    const-string/jumbo v14, "https://qr.dingtalk.com/page/conversation"

    new-instance v15, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7$2;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-interface {v13, v14, v15}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_3

    .line 478
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 479
    :cond_13
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "choose_enterprise_group_conversation"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "conversation"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v7}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 482
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "intent_key_use_external_logic"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 483
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    iget-object v14, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 485
    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v14, "im_navigator_from"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, "statisticsFrom":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 488
    const-string/jumbo v13, "im_navigator_from"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_16
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$7;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    iget-object v15, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method
