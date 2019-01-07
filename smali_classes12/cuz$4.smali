.class final Lcuz$4;
.super Ljava/lang/Object;
.source "EncryptMsgViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcuz;


# direct methods
.method constructor <init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcuz;

    .prologue
    .line 153
    iput-object p1, p0, Lcuz$4;->c:Lcuz;

    iput-object p2, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcuz$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 155
    iget-object v3, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->updateDisplayType()V

    .line 158
    iget-object v3, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_decrypt_msg_in_conversation"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "conversation_id"

    iget-object v4, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    iget-object v3, v3, Lcuz;->d:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 167
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcuz$4;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcuz$4;->b:Landroid/app/Activity;

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Z()Lcug;

    move-result-object v1

    .line 169
    .local v1, "chatItemAdapter":Lcug;
    if-eqz v1, :cond_2

    .line 170
    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    iget-object v4, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lcuz;->a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    invoke-static {v3}, Lcuz;->a(Lcuz;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcug;->notifyDataSetChanged()V

    .line 183
    .end local v1    # "chatItemAdapter":Lcug;
    :cond_2
    :goto_0
    return-void

    .line 178
    :cond_3
    iget-object v3, p0, Lcuz$4;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    iget-object v4, p0, Lcuz$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lcuz;->a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    invoke-static {v3}, Lcuz;->b(Lcuz;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lcuz$4;->c:Lcuz;

    invoke-static {v3}, Lcuz;->a(Lcuz;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
