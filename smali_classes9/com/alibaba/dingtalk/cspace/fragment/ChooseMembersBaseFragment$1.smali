.class final Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChooseMembersBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    if-nez p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v5, "activity_identify"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "identifier":Ljava/lang/String;
    const-string/jumbo v5, "choose_enterprise_group_conversation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    const-string/jumbo v5, "conversation"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    .local v2, "dataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 88
    .local v4, "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v4, :cond_2

    .line 92
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v5

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v5, v7, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 95
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-virtual {v5, v1}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->c(Ljava/util/List;)V

    goto :goto_0
.end method
