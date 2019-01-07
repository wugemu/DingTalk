.class public Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "ConversationPickHandler.java"


# instance fields
.field private mCorpId:Ljava/lang/String;

.field private mMenuSeed:J

.field private mShowConfirmDialog:Z

.field private mSupportMultiple:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;J)V
    .locals 1
    .param p1, "showConfirmDialog"    # Z
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "menuSeed"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mShowConfirmDialog:Z

    .line 41
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mCorpId:Ljava/lang/String;

    .line 42
    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mMenuSeed:J

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->verifyConversationTitle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->sendChat(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private sendChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "oid"    # J

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 116
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "corpid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mMenuSeed:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 123
    return-void
.end method

.method private verifyConversationTitle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 85
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 86
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 87
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v5, Lcma;

    invoke-interface {v2, v4, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 86
    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 111
    .end local v0    # "uid":J
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-direct {p0, v2, p3, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->sendChat(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected dealWithTogether()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mSupportMultiple:Z

    return v0
.end method

.method protected needShowBatchForwardTipsDialog()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mShowConfirmDialog:Z

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    return v0
.end method

.method protected send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V
    .locals 12
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v5, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 137
    .local v4, "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v8, :cond_1

    .line 141
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 142
    .local v6, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v6    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v8, :cond_0

    .line 145
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 146
    .local v2, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {v2}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v2}, Ldjl;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v4    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.workapp.conversation.FORWARD"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "conversation_ids"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v7, "conversation_title"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    invoke-virtual {v7, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 160
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 163
    :cond_3
    return-void
.end method

.method public setSupportMultiple(Z)V
    .locals 0
    .param p1, "supportMultiple"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mSupportMultiple:Z

    .line 47
    return-void
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 63
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->onFail(ILjava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mShowConfirmDialog:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 1356
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    sget v2, Lctk$i;->chat_forward_dialog_title:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lctk$i;->chat_forward_yes:I

    new-instance v3, Ldhy$6;

    invoke-direct {v3, v1}, Ldhy$6;-><init>(Ldhy$a;)V

    .line 1361
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->chat_forward_no:I

    .line 1369
    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->verifyConversationTitle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method
