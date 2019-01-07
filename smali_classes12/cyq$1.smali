.class final Lcyq$1;
.super Ljava/lang/Object;
.source "UserEncryptedViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcyq;


# direct methods
.method constructor <init>(Lcyq;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcyq;

    .prologue
    .line 67
    iput-object p1, p0, Lcyq$1;->c:Lcyq;

    iput-object p2, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcyq$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    .line 73
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    .line 74
    .local v10, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v3, :cond_3

    .line 75
    invoke-static {v10}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 77
    .local v4, "orgId":J
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "space_transfer_src"

    invoke-static {v10}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "space_conversation_owner_id"

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    invoke-virtual {v9, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 80
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v11

    .line 81
    .local v11, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_0

    .line 82
    const-string/jumbo v2, "doc_readonly"

    const-string/jumbo v1, "doc_readonly"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "watermark"

    const-string/jumbo v1, "watermark"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string/jumbo v2, "burnChat"

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v12, 0x4

    cmp-long v1, v6, v12

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 88
    .local v0, "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    const-string/jumbo v1, "duration"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->duration()J

    move-result-wide v6

    invoke-virtual {v9, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    .end local v0    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    :cond_1
    const-string/jumbo v1, "intent_key_encrypt_file_force_send_read"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_chat_msg_open_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcyq$1;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcyq$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    .line 103
    .end local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v4    # "orgId":J
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v11    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 85
    .restart local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v4    # "orgId":J
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v11    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    .end local v4    # "orgId":J
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "UserEncryptedViewHolder"

    const-string/jumbo v6, "spaceDo is null"

    invoke-static {v1, v2, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v10    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_4
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "UserEncryptedViewHolder"

    const-string/jumbo v6, "message is not dintalkmessage"

    invoke-static {v1, v2, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
