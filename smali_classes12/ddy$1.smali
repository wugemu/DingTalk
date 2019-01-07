.class final Lddy$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatLoadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 133
    iput-object p1, p0, Lddy$1;->a:Lddy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 1066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 137
    invoke-interface {v7}, Lddx$b;->d()Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string/jumbo v7, "com.workapp.conversation.title.CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    const-string/jumbo v7, "cid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "cid":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 2066
    iget-object v7, v7, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 143
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    const-string/jumbo v7, "conversation_title"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "newTitle":Ljava/lang/String;
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 3066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 145
    invoke-interface {v7, v6}, Lddx$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v1    # "cid":Ljava/lang/String;
    .end local v6    # "newTitle":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    const-string/jumbo v7, "cid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "desCid":Ljava/lang/String;
    const-string/jumbo v7, "is_enterprise_group"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 150
    .local v5, "isEnterprise":Z
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 4066
    iget-object v7, v7, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 150
    if-eqz v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 5066
    iget-object v7, v7, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 150
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 151
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 6066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 151
    invoke-interface {v7, v5}, Lddx$b;->b(Z)V

    goto :goto_0

    .line 154
    .end local v4    # "desCid":Ljava/lang/String;
    .end local v5    # "isEnterprise":Z
    :cond_3
    const-string/jumbo v7, "com.workapp.msg.update"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "com.workapp.msg.sender.update"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    :cond_4
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 7066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 155
    invoke-interface {v7}, Lddx$b;->a()V

    goto/16 :goto_0

    .line 156
    :cond_5
    const-string/jumbo v7, "com.workapp.org.sync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "com.workapp.org_employee_change"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 157
    :cond_6
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 8066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 157
    invoke-interface {v7}, Lddx$b;->k()V

    goto/16 :goto_0

    .line 158
    :cond_7
    const-string/jumbo v7, "action_decrypt_msg_in_conversation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    const-string/jumbo v7, "conversation_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1    # "cid":Ljava/lang/String;
    const-string/jumbo v7, "corp_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "corpId":Ljava/lang/String;
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 9066
    iget-object v7, v7, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 161
    invoke-static {v7}, Ldjl;->s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "convCorpId":Ljava/lang/String;
    if-eqz v1, :cond_8

    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 10066
    iget-object v7, v7, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 163
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    :cond_9
    iget-object v7, p0, Lddy$1;->a:Lddy;

    iget-object v8, p0, Lddy$1;->a:Lddy;

    .line 11066
    iget-object v8, v8, Lddy;->c:Ldqq;

    .line 164
    invoke-static {v7, v8}, Lddy;->a(Lddy;Ldqq;)I

    move-result v7

    if-lez v7, :cond_0

    .line 165
    iget-object v7, p0, Lddy$1;->a:Lddy;

    .line 12066
    iget-object v7, v7, Lddy;->d:Lddx$b;

    .line 165
    invoke-interface {v7}, Lddx$b;->a()V

    goto/16 :goto_0
.end method
