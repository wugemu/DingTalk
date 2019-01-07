.class final Lczw$3;
.super Ljava/lang/Object;
.source "UserSpaceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts;J)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcts;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcts;Lcom/alibaba/wukong/im/Message;J)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lczw$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lczw$3;->b:Lcts;

    iput-object p3, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    iput-wide p4, p0, Lczw$3;->d:J

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
    .line 193
    iget-object v1, p0, Lczw$3;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lczw$3;->b:Lcts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 197
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_0

    .line 201
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 202
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 204
    .local v4, "orgId":J
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v6

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    cmp-long v1, v6, v12

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 206
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v1

    iget-object v2, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    iget-wide v6, p0, Lczw$3;->d:J

    invoke-virtual {v1, v2, v6, v7}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;

    move-result-object v10

    .line 207
    .local v10, "timer":Ldjz$a;
    iget-object v1, p0, Lczw$3;->b:Lcts;

    invoke-virtual {v1, v10}, Lcts;->a(Ldjz$a;)V

    .line 210
    .end local v10    # "timer":Ldjz$a;
    :cond_2
    const-string/jumbo v8, ""

    .line 211
    .local v8, "conversationId":Ljava/lang/String;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "space_transfer_src"

    iget-object v2, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 215
    const-string/jumbo v1, "space_conversation_owner_id"

    iget-object v2, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    invoke-virtual {v9, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    const-string/jumbo v1, "intent_key_conversation_tag"

    iget-object v2, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    invoke-virtual {v9, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v11

    .line 219
    .local v11, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v11, :cond_3

    .line 220
    const-string/jumbo v2, "is_space_admin"

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    iget-wide v12, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v1, v6, v12

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    :cond_3
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 224
    const-string/jumbo v2, "doc_readonly"

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v6, "doc_readonly"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v2, "watermark"

    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v6, "watermark"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_4
    iget-object v1, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    .line 230
    .end local v11    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_5
    iget v1, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 231
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_mail_read_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 235
    :cond_6
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_chat_msg_open_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lczw$3;->a:Landroid/app/Activity;

    iget-object v6, p0, Lczw$3;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 220
    .restart local v11    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method
