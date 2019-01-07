.class final Ldji$2;
.super Landroid/content/BroadcastReceiver;
.source "ConversationCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldji;


# direct methods
.method constructor <init>(Ldji;)V
    .locals 0
    .param p1, "this$0"    # Ldji;

    .prologue
    .line 136
    iput-object p1, p0, Ldji$2;->a:Ldji;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 1044
    iget-object v3, v3, Ldji;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 2169
    iget-object v4, v3, Ldji;->d:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    .line 2170
    iget-object v4, v3, Ldji;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, v3, Ldji;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2171
    const/4 v4, 0x0

    iput-object v4, v3, Ldji;->d:Landroid/content/BroadcastReceiver;

    .line 141
    :cond_0
    const-string/jumbo v3, "intent_key_conversation_select_type"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "selectType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 144
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 3044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 144
    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 4044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 145
    iget-object v4, p0, Ldji$2;->a:Ldji;

    .line 5044
    iget-object v4, v4, Ldji;->e:Ljava/util/List;

    .line 145
    invoke-interface {v3, v4}, Ldca;->a(Ljava/util/List;)V

    .line 161
    .end local v1    # "selectType":I
    :cond_1
    :goto_0
    return-void

    .line 147
    .restart local v1    # "selectType":I
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 148
    const-string/jumbo v3, "conversation"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 149
    .local v2, "serializable":Ljava/io/Serializable;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 150
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 151
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 6044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 151
    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 7044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 152
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldca;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "serializable":Ljava/io/Serializable;
    :cond_3
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 8044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 156
    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Ldji$2;->a:Ldji;

    .line 9044
    iget-object v3, v3, Ldji;->b:Ldca;

    .line 157
    invoke-interface {v3}, Ldca;->a()V

    goto :goto_0
.end method
