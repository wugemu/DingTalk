.class public abstract Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.super Ljava/lang/Object;
.source "BaseForwardHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;
    }
.end annotation


# static fields
.field private static final GROUP_MULTI_FORWARD:Ljava/lang/String; = "group_multi_forward"

.field private static final serialVersionUID:J = 0x22d5374cd60ea14aL


# instance fields
.field protected mAppendInfo:Ljava/lang/String;

.field protected mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mForwardTimeStamp:J

.field protected mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

.field protected mSize:I

.field protected mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->send2Conversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method private createChatConversation(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/wukong/Callback;)V
    .locals 13
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 321
    if-nez p2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 325
    .local v7, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 326
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 327
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 328
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v8, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-static {v8, v12}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "icon":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;

    invoke-direct {v1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 334
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v12

    .line 331
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private forward2Recipient(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x3eb

    const/4 v4, 0x0

    .line 144
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v3, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 147
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->createChatConversation(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/wukong/Callback;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v3, :cond_4

    .line 166
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_4

    .line 167
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object v1, v2

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 168
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->send2Conversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 171
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    .line 174
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_0

    .line 177
    :cond_3
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$3;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v2, v3, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    .line 203
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_0
.end method

.method private send2Conversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected declared-synchronized checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "showSuccessToast"    # Z

    .prologue
    .line 209
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZ)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "showSuccessToast"    # Z
    .param p3, "finishCurrentPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 216
    .local v0, "count":I
    iget v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mSize:I

    if-ne v0, v1, :cond_0

    .line 217
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$4;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$4;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;ZZLcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected dealWithTogether()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public final fillForwardTip(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->fillForwardTipImpl(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected fillForwardTipImpl(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->getForwardTipInfo()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "forwardTipInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected finishCurrentPage()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_message_multi_forward_completed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method

.method protected getForwardTipInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 378
    const-string/jumbo v0, "group_multi_forward"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method protected getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->preCheckPermissionBeforeForward(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Lcma;)V

    .line 101
    return-void
.end method

.method public abstract isSupportMultiple()Z
.end method

.method protected needShowBatchForwardTipsDialog()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 309
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method protected onFail(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(ILjava/lang/String;)V

    .line 388
    return-void
.end method

.method protected onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 391
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$5;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method protected onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 406
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$6;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method protected onShareComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 234
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method protected preCheckPermissionBeforeForward(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Lcma;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Lcma",
            "<",
            "Lcko;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 456
    .local p2, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .local p3, "listener":Lcma;, "Lcma<Lcko;>;"
    if-eqz p1, :cond_0

    .line 457
    const-class v1, Lcma;

    invoke-static {p3, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "listener":Lcma;, "Lcma<Lcko;>;"
    check-cast p3, Lcma;

    .line 460
    .restart local p3    # "listener":Lcma;, "Lcma<Lcko;>;"
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mForwardTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 461
    new-instance v0, Lcko;

    invoke-direct {v0}, Lcko;-><init>()V

    .line 462
    .local v0, "permissionCheckResult":Lcko;
    const/4 v1, 0x1

    .line 2020
    iput-boolean v1, v0, Lcko;->a:Z

    .line 463
    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 468
    .end local v0    # "permissionCheckResult":Lcko;
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mForwardTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ldvi;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public resetAppendHint(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 288
    return-void
.end method

.method protected send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 277
    return-void
.end method

.method protected send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    return-void
.end method

.method protected final sendText(Ldiz;)V
    .locals 1
    .param p1, "mMessageSender"    # Ldiz;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method protected final sendText(Ldiz;Ljava/lang/String;)V
    .locals 2
    .param p1, "mMessageSender"    # Ldiz;
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    invoke-virtual {p1, p2, v1, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_0
.end method

.method public setForwardTimeStamp(J)V
    .locals 1
    .param p1, "forwardTimeStamp"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mForwardTimeStamp:J

    .line 109
    return-void
.end method

.method public setMsgForwardStatistics(Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;)V
    .locals 0
    .param p1, "msgForwardStatistics"    # Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    .line 105
    return-void
.end method

.method public share2Conversations(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p3, "appendInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    :cond_0
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    goto :goto_0

    .line 122
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mSize:I

    .line 124
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->mAppendInfo:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->dealWithTogether()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V

    goto :goto_0

    .line 131
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 132
    .local v0, "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v0, :cond_5

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->forward2Recipient(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V

    goto :goto_1
.end method

.method public share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(I)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
.end method

.method protected showSucceedToast()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 431
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$7;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method
