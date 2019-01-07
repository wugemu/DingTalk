.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "MsgForwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 254
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string/jumbo v6, "intent_action_show_confirm_dialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6, p2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    :cond_2
    const-string/jumbo v6, "intent_action_show_loading_dialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->showLoadingDialog()V

    goto :goto_0

    .line 263
    :cond_3
    const-string/jumbo v6, "intent_action_dismiss_loading_dialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->dismissLoadingDialog()V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 268
    const-string/jumbo v6, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 276
    .local v3, "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v7

    sget-object v8, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v7, v8, :cond_5

    .line 277
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 282
    .end local v3    # "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_6
    const-string/jumbo v6, "choose_user_identities"

    .line 283
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 284
    .local v5, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 285
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 287
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromUserIdentitiyObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v2

    .line 288
    .local v2, "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v2, :cond_7

    .line 289
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z

    goto :goto_2

    .line 293
    .end local v2    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-static {v1}, Ldhy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcvm;->a(Ljava/util/List;)V

    .line 295
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    goto/16 :goto_0

    .line 299
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .end local v5    # "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-nez v6, :cond_a

    const-string/jumbo v6, "action_share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .line 300
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 301
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6, p2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    :cond_b
    const-string/jumbo v6, "com.workapp.conversation.forward.NAMECARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 303
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6, p2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 304
    :cond_c
    const-string/jumbo v6, "com.workapp.conversation.FORWARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 305
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 306
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->finish()V

    goto/16 :goto_0

    .line 308
    :cond_d
    const-string/jumbo v6, "action_choose_group_conversation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    const-string/jumbo v6, "conversation"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 310
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v6, v4, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0
.end method
