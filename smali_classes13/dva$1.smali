.class final Ldva$1;
.super Landroid/content/BroadcastReceiver;
.source "CmailMessageSelectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldva;


# direct methods
.method constructor <init>(Ldva;)V
    .locals 0
    .param p1, "this$0"    # Ldva;

    .prologue
    .line 54
    iput-object p1, p0, Ldva$1;->a:Ldva;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v2, "intent_key_im_forward_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v15

    .line 58
    .local v15, "type":I
    const-string/jumbo v2, "intent_key_menu_seed"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v8, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v12

    .line 60
    .local v12, "menuSeed":J
    move-object/from16 v0, p0

    iget-object v2, v0, Ldva$1;->a:Ldva;

    .line 1045
    iget-wide v2, v2, Ldva;->b:J

    .line 60
    cmp-long v2, v2, v12

    if-nez v2, :cond_0

    const/4 v2, 0x5

    if-eq v15, v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v2, "intent_key_message_recipients"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 65
    .local v14, "recipientDataObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const-string/jumbo v2, "intent_key_forward_append_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "subject":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, "userRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v5, 0x0

    .line 74
    .local v5, "conversationsRecipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 75
    .local v11, "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v11, :cond_2

    .line 79
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v4, :cond_4

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_4

    .line 81
    if-nez v6, :cond_3

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "userRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v6    # "userRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v4, :cond_2

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 94
    if-nez v5, :cond_5

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "conversationsRecipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v5    # "conversationsRecipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v11    # "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_6
    new-instance v10, Ldva$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ldva$1$1;-><init>(Ldva$1;)V

    .line 129
    .local v10, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldva$1;->a:Ldva;

    iget-object v3, v3, Ldva;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldva$1;->a:Ldva;

    iget-object v4, v4, Ldva;->h:Ldru;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Ldva$1;->a:Ldva;

    .line 2045
    iget-object v8, v8, Ldva;->a:Ljava/util/List;

    .line 130
    const/4 v9, 0x1

    .line 129
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILcma;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ldva$1;->a:Ldva;

    iget-object v4, v4, Ldva;->h:Ldru;

    .line 1075
    iget-object v4, v4, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    goto :goto_2
.end method
