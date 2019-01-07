.class public Lder;
.super Ljava/lang/Object;
.source "BeginnerGuideManager.java"


# static fields
.field private static volatile b:Lder;


# instance fields
.field public a:Lcom/alibaba/wukong/im/MessageListener;

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static a()Lder;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lder;->b:Lder;

    if-nez v0, :cond_0

    .line 79
    const-class v1, Lder;

    monitor-enter v1

    .line 80
    :try_start_0
    new-instance v0, Lder;

    invoke-direct {v0}, Lder;-><init>()V

    sput-object v0, Lder;->b:Lder;

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v0, Lder;->b:Lder;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 12
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "previousCid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 422
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->dt_message_forward_chat_record_tips:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "tip":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->dt_message_forward_chat_record_links:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "link":Ljava/lang/String;
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/String;

    aput-object v6, v9, v10

    .line 428
    invoke-static {}, Lcms;->h()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, " "

    :goto_1
    aput-object v8, v9, v11

    const/4 v8, 0x2

    aput-object v2, v9, v8

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    invoke-interface {v7, v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 430
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v7, :cond_0

    .line 433
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v8, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v7, v4, v8}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 434
    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 435
    .local v5, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    new-array v7, v11, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 436
    const/16 v7, 0x66

    iput v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 437
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v8, v7, v10

    .line 438
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 439
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v8, v7, v10

    invoke-static {}, Lcms;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    :goto_2
    iput v7, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 440
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v10

    const-string/jumbo v8, "#1fa3ff"

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 441
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 442
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v10

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "cid"

    invoke-virtual {v8, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    move-object v7, v4

    .line 444
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v8, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v7, v4

    .line 445
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v5, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 446
    invoke-static {v5}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 448
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 449
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 428
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v5    # "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    :cond_2
    const-string/jumbo v8, ""

    goto/16 :goto_1

    .line 439
    .restart local v4    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v5    # "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_2

    .line 453
    .restart local v0    # "baseUri":Landroid/net/Uri;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lddq;->h()Z

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v4, p0, v7, v8}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;ZLdqq;)V
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "burnChat"    # Z
    .param p2, "chatMsgListModel"    # Ldqq;

    .prologue
    .line 230
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 231
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 232
    invoke-virtual {p2}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/Message;

    .line 233
    .local v6, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1

    .line 234
    :cond_0
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "sended_voice_translate_guide_message"

    invoke-static {v1, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "sended_voice_translate_guide_message"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 237
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->voice_to_text_message:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "tip":Ljava/lang/String;
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v7}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 239
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 240
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {}, Lddq;->h()Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/Message;->sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JZLcom/alibaba/wukong/Callback;)V

    .line 246
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v6    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    .end local v7    # "tip":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p0, "successMessage"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 700
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "msg_trans_original"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    const-string/jumbo v2, "pref_key_auto_first_tip"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    const-string/jumbo v2, "pref_key_auto_first_tip"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 713
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_message_autotranslate_guide_tips:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "tip":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 716
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_0

    .line 719
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 720
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {}, Lddq;->h()Z

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const-string/jumbo v2, "encrypt_guide_first_show"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const-string/jumbo v0, "encrypt_guide_first_show"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    move v0, v1

    .line 217
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 11
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    if-eqz p0, :cond_2

    .line 393
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v4, "sended_audio_message"

    invoke-static {v1, v4}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v6, v3

    .line 396
    .local v6, "isNeedLink":Z
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v4, "sended_audio_message"

    invoke-static {v1, v4, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 397
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lctk$i;->guide_more:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "link":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lctk$i;->message_voice_globalswitch_remind:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, "tip":Ljava/lang/String;
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    if-eqz v6, :cond_4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v2

    aput-object v7, v4, v3

    .line 400
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    :goto_1
    invoke-interface {v1, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 401
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v1, v0, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 402
    if-eqz v6, :cond_1

    .line 403
    new-instance v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 404
    .local v8, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    new-array v1, v3, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 405
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v4, v1, v2

    .line 406
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v1, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 407
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v1, v1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 408
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v1, v1, v2

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 409
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v1, v1, v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/link?url=https://s.dingtalk.com/market/dingtalk/201512281943.php"

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    .line 410
    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v1, v1, v2

    const-string/jumbo v2, "#1fa3ff"

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 411
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v2, 0x0

    invoke-static {v8}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 413
    .end local v8    # "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-static {}, Lddq;->h()Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/Message;->sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JZLcom/alibaba/wukong/Callback;)V

    .line 416
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v6    # "isNeedLink":Z
    .end local v7    # "link":Ljava/lang/String;
    .end local v9    # "tip":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    move v6, v2

    .line 395
    goto/16 :goto_0

    .restart local v6    # "isNeedLink":Z
    .restart local v7    # "link":Ljava/lang/String;
    .restart local v9    # "tip":Ljava/lang/String;
    :cond_4
    move-object v4, v9

    .line 400
    goto :goto_1
.end method

.method private static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 610
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "local_extra_topic_emotion_read"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    if-nez p0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    invoke-static {}, Lcms;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "chat_auto_trans_en_tip"

    :goto_1
    invoke-interface {v5, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_message_autotranslate_setting_guide_text:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "tip":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_message_autotranslate_setting_guide_link:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "link":Ljava/lang/String;
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    .line 672
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 674
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    .line 677
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v4, v1, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 678
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 679
    .local v2, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    new-array v4, v7, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 680
    iput v6, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 681
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v5, v4, v6

    .line 682
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 683
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 684
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v6

    const-string/jumbo v5, "#1fa3ff"

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 685
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v6

    const/16 v5, 0x271b

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 686
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v6

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    move-object v4, v1

    .line 688
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v4, v1

    .line 689
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 690
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v6, 0x0

    invoke-static {v2}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v1, v6, v7, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 691
    invoke-static {}, Lddq;->h()Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p0, v4, v5}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 667
    .end local v0    # "link":Ljava/lang/String;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v2    # "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .end local v3    # "tip":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "chat_auto_trans_cn_tip"

    goto/16 :goto_1
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 724
    if-nez p0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_im_chat_conf_call_missed_setting_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 729
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_common_comma:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 728
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "tip":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_chat_conf_call_missed_setting_link:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "link":Ljava/lang/String;
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 732
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    .line 735
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v4, v1, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 736
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 737
    .local v2, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    new-array v4, v8, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 738
    const/16 v4, 0x68

    iput v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 739
    const/4 v4, 0x5

    iput v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    .line 740
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v5, v4, v7

    .line 741
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 742
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 743
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v7

    const-string/jumbo v5, "#1fa3ff"

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 744
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v7

    iput v8, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 745
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v4, v4, v7

    const-string/jumbo v5, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_gfdh&questionId=201602322549"

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    move-object v4, v1

    .line 747
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v4, v1

    .line 748
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 749
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v6, 0x0

    invoke-static {v2}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v1, v6, v7, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 751
    invoke-static {}, Lddq;->h()Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p0, v4, v5}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 12
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 758
    if-nez p0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-static {p0}, Ldjl;->F(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    .line 762
    .local v2, "isGlobalConversation":Z
    invoke-static {p0}, Ldjl;->G(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 763
    .local v1, "isDepConversation":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 766
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 767
    .local v0, "context":Landroid/content/Context;
    sget v7, Lctk$i;->dt_im_chat_no_other_members_in_all_user_group_tips:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 768
    .local v6, "tips":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v9

    const-string/jumbo v8, " "

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    if-eqz v2, :cond_3

    sget v7, Lctk$i;->dt_im_chat_add_employees_to_the_team:I

    :goto_1
    invoke-virtual {v8, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "link":Ljava/lang/String;
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    new-array v8, v11, [Ljava/lang/String;

    aput-object v6, v8, v9

    aput-object v3, v8, v10

    .line 772
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 771
    invoke-interface {v7, v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 774
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v7, :cond_0

    .line 777
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v8, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v7, v4, v8}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 778
    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 779
    .local v5, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    new-array v7, v10, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 780
    iput v9, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 781
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v8, v7, v9

    .line 782
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 783
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 784
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v9

    const-string/jumbo v8, "#1fa3ff"

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 785
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v9

    const/16 v8, 0x271d

    iput v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 786
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v7, v7, v9

    const-string/jumbo v8, ""

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    move-object v7, v4

    .line 788
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v8, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v8, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v7, v4

    .line 789
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v5, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 790
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v8, 0x0

    invoke-static {v5}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v7, v4, v8, v9, v10}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 791
    invoke-static {}, Lddq;->h()Z

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v4, p0, v7, v8}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 769
    .end local v3    # "link":Ljava/lang/String;
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v5    # "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    :cond_3
    sget v7, Lctk$i;->dt_im_chat_add_colleague_to_the_department:I

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "withGlobalOrDep"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 254
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string/jumbo v2, "first_enter_enterprise_conv"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcms;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-static {p2}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {p2}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    if-nez p3, :cond_2

    invoke-static {p2}, Ldjl;->F(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {p2}, Ldjl;->G(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    :cond_2
    const-string/jumbo v2, "first_enter_enterprise_conv"

    invoke-static {p1, v2, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 278
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v2, Lctk$e;->enterprise_conv_guide:I

    .line 1243
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 280
    sget v2, Lctk$i;->guide_enterprise_conv_tips:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2239
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 3230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 282
    sget v2, Lctk$i;->org_conv:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4218
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 283
    sget v2, Lctk$i;->guide_more:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4263
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 284
    new-instance v2, Lder$5;

    invoke-direct {v2, p0, v0, p1}, Lder$5;-><init>(Lder;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Landroid/app/Activity;)V

    .line 4267
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v2, Lder$6;

    invoke-direct {v2, p0, v0}, Lder$6;-><init>(Lder;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 4271
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 297
    invoke-static {p2}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    .line 298
    .local v1, "res":I
    if-eqz v1, :cond_3

    .line 5255
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->i:I

    .line 301
    :cond_3
    sget v2, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5259
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 302
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lder$7;

    invoke-direct {v3, p0, p1, v0}, Lder$7;-><init>(Lder;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 10
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "messageId"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lder;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 103
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sended_ding_guide"

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_message_ding_guide_oto_tips:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_ding_have_a_take:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1119
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    new-array v1, v8, [Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v3, v1, v7

    .line 1120
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1121
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1122
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 1123
    new-array v0, v7, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 1124
    const/16 v0, 0x65

    iput v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 1125
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v5, v0, v6

    .line 1126
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 1127
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 1128
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    iput v8, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 1129
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    const-string/jumbo v2, "#1fa3ff"

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 1131
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1132
    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "qr.dingtalk.com"

    .line 1133
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "action"

    .line 1134
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "message_to_ding"

    .line 1135
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "cid"

    .line 1136
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "messageId"

    .line 1137
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1138
    iget-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v2, v2, v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    .line 1141
    :try_start_0
    const-class v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v2, "mConversation"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1143
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :goto_0
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1149
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v0, v1

    .line 1150
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1153
    const-class v0, Lder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lder$1;

    invoke-direct {v2, p0, p1, v1}, Lder$1;-><init>(Lder;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1165
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_unread_ding_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v0, "chat_ding_guide_singlechat"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sended_ding_guide"

    invoke-static {v0, v1, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lder;->c:J

    .line 113
    :cond_2
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;JJ)V
    .locals 12
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "selectedDateMills"    # J
    .param p4, "calendarId"    # J

    .prologue
    .line 461
    if-nez p1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lctk$i;->dt_im_message_remind_guide_tips:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "tip":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lctk$i;->dt_im_message_remind_guide_link_title:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "link":Ljava/lang/String;
    const-class v8, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v8}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    .line 468
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 467
    invoke-interface {v8, v9}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 470
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v8, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v8, :cond_0

    .line 473
    const-class v8, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v8}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v9, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v8, v4, v9}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 474
    new-instance v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 475
    .local v6, "sld":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 476
    const/16 v8, 0x67

    iput v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 477
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    const/4 v9, 0x0

    new-instance v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v10, v8, v9

    .line 478
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 479
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 480
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const-string/jumbo v9, "#1fa3ff"

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 482
    const-string/jumbo v8, "https://qr.dingtalk.com/ding/home.html"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 483
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "to_page"

    const-string/jumbo v11, "to_calendar"

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "intent_key_calendar_select_date"

    .line 484
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "intent_key_calendar_id"

    .line 485
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 486
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    move-object v8, v4

    .line 488
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v8, v4

    .line 489
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v6, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 492
    :try_start_0
    const-class v8, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v9, "mConversation"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 493
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 494
    invoke-virtual {v2, v4, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :goto_1
    iget-object v8, p0, Lder;->a:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v8, :cond_0

    .line 500
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v8, p0, Lder;->a:Lcom/alibaba/wukong/im/MessageListener;

    sget-object v9, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {v8, v5, v9}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto/16 :goto_0

    .line 495
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    .local p1, "parseMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0, p2}, Lder;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ldkc;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 567
    .local v2, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_3

    .line 572
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 573
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 574
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 575
    invoke-static {v1}, Lder;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 578
    invoke-static {v1}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ldkc;->C(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 571
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 585
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 586
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 5621
    .restart local v1    # "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lder;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5622
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5623
    const-string/jumbo v4, "local_extra_topic_emotion_read"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5624
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;Z)V

    goto/16 :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 515
    if-eqz p1, :cond_0

    .line 5508
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 5509
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 515
    :goto_0
    if-nez v2, :cond_3

    :cond_0
    move v0, v1

    .line 528
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 5509
    goto :goto_0

    .line 519
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 520
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 521
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xd

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 522
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 523
    :cond_4
    const-string/jumbo v2, "topic_emotion_guide"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 524
    invoke-static {}, Ldig;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    .line 528
    goto :goto_1
.end method
