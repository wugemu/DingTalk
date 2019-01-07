.class public Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "MessageForwardHandler.java"


# instance fields
.field private mCid:Ljava/lang/String;

.field private mConversationIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCorpId:Ljava/lang/String;

.field private mForwardType:I

.field private mMenuSeed:J

.field private mMessage:Lcom/alibaba/wukong/im/Message;

.field private mMessageCount:I

.field private mMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/wukong/im/Message;ILjava/lang/String;I)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "menuSeed"    # J
    .param p5, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p6, "messageCount"    # I
    .param p7, "cid"    # Ljava/lang/String;
    .param p8, "forwardType"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mCorpId:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMenuSeed:J

    .line 48
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessage:Lcom/alibaba/wukong/im/Message;

    .line 49
    if-gtz p6, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 51
    const/4 p6, 0x1

    .line 54
    :cond_0
    iput p6, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageCount:I

    .line 55
    iput-object p7, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mCid:Ljava/lang/String;

    .line 56
    iput p8, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mConversationIds:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->showMessageTip(Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    return-void
.end method

.method private forwardBatch()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.conversation.FORWARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "intent_key_im_forward_mode"

    iget v3, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation_ids"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mConversationIds:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "send_text"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mAppendInfo:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 217
    return-void
.end method

.method private getMessageTip(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 11
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 284
    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-object v6

    .line 232
    .restart local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 235
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v7

    sget-object v8, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v7, v8, :cond_0

    .line 238
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 241
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 245
    invoke-static {p1}, Lcxk;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 248
    invoke-static {p1}, Lcxk;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 252
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x66

    if-ne v7, v8, :cond_2

    move-object v3, v1

    .line 253
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 254
    .local v3, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_trans_to_multiple_link_message_tip:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 257
    .end local v3    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x258

    if-ne v7, v8, :cond_3

    .line 258
    if-eqz p1, :cond_0

    instance-of v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v7, :cond_0

    .line 259
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 260
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v7, v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v7, :cond_0

    move-object v4, v5

    .line 261
    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 262
    .local v4, "mNameCardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_trans_to_multiple_namecard_tip:I

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 265
    .end local v4    # "mNameCardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .end local v5    # "obj":Ljava/lang/Object;
    .restart local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0xfb

    if-ne v7, v8, :cond_5

    .line 266
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_trans_to_multiple_pic_message_tip:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 267
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 268
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    .line 269
    .local v0, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 270
    .end local v0    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_6
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x5dc

    if-ne v7, v8, :cond_7

    .line 271
    instance-of v7, v1, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-eqz v7, :cond_0

    move-object v2, v1

    .line 272
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    .line 273
    .local v2, "forwardCombineContent":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->title()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 275
    .end local v2    # "forwardCombineContent":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    :cond_7
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_8

    .line 276
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_linkcard_attachment_type_item:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 277
    :cond_8
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x7d1

    if-ne v7, v8, :cond_9

    .line 278
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_linkcard_attachment_type_coupon:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 279
    :cond_9
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x7d3

    if-ne v7, v8, :cond_a

    .line 280
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_linkcard_attachment_type_content:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 281
    :cond_a
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0x7d2

    if-ne v7, v8, :cond_0

    .line 282
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_linkcard_attachment_type_redenvelop:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private handleBatchForwardAction(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mConversationIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0, p1, v1, v1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZ)V

    .line 208
    return-void
.end method

.method private loadMessageAsynAndSet(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    const-wide/16 v4, -0x1

    .line 121
    .local v4, "messageId":J
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 125
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 126
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->showMessageTip(Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    .line 167
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    move-wide v2, v4

    .line 129
    .local v2, "finalMessageId":J
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;J)V

    .line 164
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mCid:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendChat(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "oid"    # J

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 191
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const-string/jumbo v1, "message_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "corpid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMenuSeed:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "send_text"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    :cond_0
    const-string/jumbo v1, "intent_key_im_forward_mode"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 203
    return-void
.end method

.method private showMessageTip(Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "messageTip":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 108
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->getMessageTip(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_trans_to_multiple_none_info_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillForwardTipImpl(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 83
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageCount:I

    if-le v1, v3, :cond_1

    .line 84
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget v0, Lctk$i;->dt_im_trans_to_multiple_batch_messages_tip:I

    .line 87
    .local v0, "resId":I
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageCount:I

    .line 88
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 87
    invoke-virtual {v1, v0, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v0    # "resId":I
    :goto_1
    return-void

    .line 84
    :cond_0
    sget v0, Lctk$i;->dt_im_trans_to_multiple_messages_tip:I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessage:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->showMessageTip(Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mCid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->showMessageTip(Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1

    .line 96
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->loadMessageAsynAndSet(Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected onShareComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->onShareComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 222
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->forwardBatch()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mConversationIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mMessageCount:I

    if-gt v1, v0, :cond_0

    .line 70
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "conversationId":Ljava/lang/String;
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mForwardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->handleBatchForwardAction(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v3, 0x0

    .line 176
    .local v3, "title":Ljava/lang/String;
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 177
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 178
    .local v6, "uid":J
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 180
    .end local v6    # "uid":J
    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_2
    invoke-static {p2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .local v4, "oid":J
    move-object v0, p0

    move-object v1, p1

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->sendChat(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 178
    .end local v4    # "oid":J
    .restart local v6    # "uid":J
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
