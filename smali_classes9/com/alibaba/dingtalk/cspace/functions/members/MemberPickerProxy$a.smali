.class public final Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;
.super Landroid/content/BroadcastReceiver;
.source "MemberPickerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    if-eqz p2, :cond_0

    const-string/jumbo v4, "choose_enterprise_group_conversation"

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 45
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "activity_identify"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string/jumbo v4, "conversation"

    .line 49
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, "dataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 55
    .local v0, "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v4

    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v4, v6, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 61
    .local v2, "group":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_2

    .line 62
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    .end local v0    # "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v2    # "group":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 1028
    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

    .line 68
    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 2028
    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

    .line 69
    invoke-interface {v4, v3}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method
