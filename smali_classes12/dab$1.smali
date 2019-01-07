.class final Ldab$1;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ldab;


# direct methods
.method constructor <init>(Ldab;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Ldab;

    .prologue
    .line 163
    iput-object p1, p0, Ldab$1;->c:Ldab;

    iput-object p2, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldab$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v11, :cond_3

    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 168
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x12d

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x12c

    if-ne v11, v12, :cond_a

    .line 170
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v11, "sender_uid"

    iget-object v12, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v11, "cid"

    iget-object v12, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v11, "msg_id"

    iget-object v12, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v11, "msg_type"

    iget-object v12, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v12, "oa_assist_msg_click"

    invoke-interface {v11, v12, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    instance-of v11, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v11, :cond_1

    .line 179
    iget-object v4, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 180
    .local v4, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v11, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v11, :cond_1

    iget-object v11, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v11, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v11, :cond_1

    .line 181
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 182
    .local v7, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    iget-object v11, v7, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bizType:Ljava/lang/String;

    const-string/jumbo v12, "space_collect_file"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 183
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v12, "space_collect_file_message_click"

    invoke-interface {v11, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 188
    .end local v4    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v7    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_1
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 189
    .local v6, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 190
    .local v1, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 191
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "url":Ljava/lang/String;
    const/4 v9, 0x0

    .line 193
    .local v9, "title":Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 194
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "h_tl"

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "h_tl"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "title":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 197
    .restart local v9    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, "https://qr.dingtalk.com/page/mailconfig"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 198
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v11

    iget-object v12, p0, Ldab$1;->b:Landroid/app/Activity;

    invoke-virtual {v11, v12, v10}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    .end local v0    # "args":Ljava/util/Map;
    .end local v1    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v6    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 199
    .restart local v0    # "args":Ljava/util/Map;
    .restart local v1    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .restart local v6    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "https://qr.dingtalk.com/page/maillogin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v11

    iget-object v12, p0, Ldab$1;->b:Landroid/app/Activity;

    invoke-virtual {v11, v12, v10}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_5
    const-string/jumbo v11, "dingtalk://dingtalkclient/page/task"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "dingtalk://dingtalkclient/page/ding"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 202
    :cond_6
    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "dingId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v11

    iget-object v12, p0, Ldab$1;->b:Landroid/app/Activity;

    invoke-virtual {v11, v12, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v3    # "dingId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "/page/myRedenvelop"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 206
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v12, "chat_redenvelope_envelopehelper_msg_click"

    invoke-interface {v11, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 211
    :cond_8
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    iget-object v12, p0, Ldab$1;->b:Landroid/app/Activity;

    new-instance v13, Ldab$1$1;

    invoke-direct {v13, p0}, Ldab$1$1;-><init>(Ldab$1;)V

    invoke-virtual {v11, v12, v10, v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_9
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v11}, Ldkc;->O(Lcom/alibaba/wukong/im/Message;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 209
    const-string/jumbo v11, "cloud_report_chat_view"

    invoke-static {v11}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .end local v0    # "args":Ljava/util/Map;
    .end local v1    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v6    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x190

    if-ne v11, v12, :cond_3

    .line 223
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    instance-of v11, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v11, :cond_3

    .line 224
    iget-object v2, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 225
    .local v2, "dMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 226
    .local v8, "thirdPartyDo":Ljava/lang/Object;
    instance-of v11, v8, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v11, :cond_3

    move-object v5, v8

    .line 227
    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 229
    .local v5, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Liaf;->b(J)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 231
    sget v11, Lctk$i;->and_wukong_error_param_error:I

    invoke-static {v11}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_b
    iget-object v11, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v11, v5}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V

    .line 234
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v12, "mail_trans_to_chat_click"

    invoke-interface {v11, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v11

    iget-object v12, p0, Ldab$1;->b:Landroid/app/Activity;

    iget-object v13, p0, Ldab$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v5, v13, v14}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V

    goto/16 :goto_0
.end method
