.class public Lddq;
.super Ljava/lang/Object;
.source "ChatUtil.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lddq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lddq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ldkx;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 468
    if-eqz p0, :cond_0

    invoke-static {p0}, Ldkc;->E(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    new-instance v0, Ldkx;

    invoke-direct {v0}, Ldkx;-><init>()V

    .line 471
    .local v0, "commentInfo":Ldkx;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Ldkx;->a:Ljava/util/HashMap;

    .line 472
    iget-object v1, v0, Ldkx;->a:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v0    # "commentInfo":Ldkx;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "videoFile"    # Ljava/io/File;

    .prologue
    .line 742
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "finalName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 745
    .end local v0    # "finalName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "%s_sight_%s"

    .line 746
    .local v1, "nameFormat":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 747
    .local v2, "timeFormat":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "finalName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 21
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 871
    invoke-static/range {p1 .. p1}, Ldqr;->a(Lcom/alibaba/wukong/im/Message;)Ldqr;

    move-result-object v13

    .line 6051
    .local v13, "commentParamModel":Ldqr;
    iget v4, v13, Ldqr;->b:I

    .line 877
    if-eqz v4, :cond_0

    .line 7051
    iget v4, v13, Ldqr;->b:I

    .line 877
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 878
    :cond_0
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 879
    .local v12, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "intent_key_comment_like_count"

    const-string/jumbo v5, "reaction_like_count"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v12, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 880
    const-string/jumbo v4, "intent_key_comment_comment_count"

    const-string/jumbo v5, "reaction_comment_count"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v12, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 882
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    .line 8047
    iget-object v6, v13, Ldqr;->a:Ljava/lang/String;

    .line 8055
    iget-object v7, v13, Ldqr;->c:Ljava/lang/String;

    .line 9051
    iget v8, v13, Ldqr;->b:I

    .line 9059
    iget-object v9, v13, Ldqr;->d:Ljava/lang/String;

    .line 9067
    iget-object v10, v13, Ldqr;->f:Ljava/lang/String;

    .line 9095
    iget-object v11, v13, Ldqr;->g:Ljava/lang/String;

    move-object/from16 v5, p0

    .line 882
    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 929
    .end local v12    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 10051
    :cond_2
    iget v4, v13, Ldqr;->b:I

    .line 885
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 886
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v4, :cond_1

    .line 890
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v17

    check-cast v17, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 892
    .local v17, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 896
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/wukong/im/MessageContent;

    .line 898
    .local v16, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v4, :cond_1

    move-object/from16 v14, v16

    .line 902
    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 904
    .local v14, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 905
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v19

    .line 906
    .local v19, "url":Ljava/lang/String;
    const/16 v18, 0x0

    .line 907
    .local v18, "title":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "&"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "reaction_action"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "="

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "comment"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 909
    .local v20, "urlAppend":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "h_tl"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "h_tl"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "title":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 913
    .restart local v18    # "title":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    new-instance v5, Lddq$5;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lddq$5;-><init>(Lcom/alibaba/wukong/im/Message;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11051
    .end local v14    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v16    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v17    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "urlAppend":Ljava/lang/String;
    :cond_4
    iget v4, v13, Ldqr;->b:I

    .line 923
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 924
    const-string/jumbo v4, "dingId"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 925
    .local v15, "dingId":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 926
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v15}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "onProcessingListener"    # Lcts$c;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 324
    if-nez p1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v3, v1}, Lddq;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 331
    new-instance v0, Lddq$1;

    invoke-direct {v0, p2, p1, p0}, Lddq$1;-><init>(Lcts$c;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 368
    .local v0, "listener":Lcma;, "Lcma<Lgqw;>;"
    if-eqz p0, :cond_1

    .line 369
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lgqw;>;"
    check-cast v0, Lcma;

    .line 372
    .restart local v0    # "listener":Lcma;, "Lcma<Lgqw;>;"
    :cond_1
    invoke-static {p1, v4, v4, v3, v0}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/Map;ZLcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ldqq;)V
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "chatMsgListModel"    # Ldqq;

    .prologue
    .line 273
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v4

    invoke-virtual {v4, p0}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 279
    invoke-virtual {p1}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 280
    .local v3, "size":I
    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    .local v1, "len":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    sub-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_3

    .line 282
    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 283
    invoke-virtual {p1}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 284
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v4, v5, :cond_0

    .line 281
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 291
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "size":I
    :cond_3
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v4

    const-string/jumbo v5, "*#*##*#*"

    invoke-virtual {v4, p0, v5}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/wukong/im/MessageListener;)V
    .locals 11
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "messageListener"    # Lcom/alibaba/wukong/im/MessageListener;

    .prologue
    const/4 v10, 0x1

    .line 1273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1277
    .local v0, "createAt":J
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1278
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v0, v6, v8

    .line 1280
    :cond_2
    const-class v6, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    new-array v7, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 1281
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1280
    invoke-interface {v6, v7, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;J)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 1282
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    const-class v6, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v7, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v6, v4, v7}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1285
    :try_start_0
    const-class v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v7, "mConversation"

    .line 1286
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1287
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1288
    invoke-virtual {v3, v4, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    instance-of v6, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 1294
    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v7, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 1296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    sget-object v6, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {p2, v5, v6}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto :goto_0

    .line 1289
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :catch_0
    move-exception v2

    .line 1290
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 13022
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 775
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-nez v6, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 781
    .local v1, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v1, :cond_0

    .line 785
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, "url":Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, "title":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 790
    const-string/jumbo v6, "https://qr.dingtalk.com/page/sharespace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 791
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v6, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    new-instance v7, Lddq$3;

    invoke-direct {v7}, Lddq$3;-><init>()V

    invoke-interface {v6, v5, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 797
    :cond_2
    const-string/jumbo v6, "https://qr.dingtalk.com/page/emotion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 799
    :try_start_0
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 800
    .local v2, "emotionPackageId":J
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v6, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/page/emotion"

    new-instance v8, Lddq$4;

    invoke-direct {v8, v4, v2, v3}, Lddq$4;-><init>(Ljava/lang/String;J)V

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v2    # "emotionPackageId":J
    :catch_0
    move-exception v6

    goto :goto_0

    .line 811
    :cond_3
    const-string/jumbo v6, "https://qr.dingtalk.com/page/mailconfig"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 812
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    :cond_4
    const-string/jumbo v6, "https://qr.dingtalk.com/page/maillogin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 814
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5822
    :cond_5
    if-eqz p0, :cond_7

    .line 5823
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5824
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    .line 5825
    const-string/jumbo v7, "ding_sender_id"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5826
    const-string/jumbo v7, "message_id"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    if-eqz v6, :cond_6

    .line 5830
    const-string/jumbo v7, "conversation_id"

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5832
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 5833
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-static {v6}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    .line 5834
    const-string/jumbo v8, "org_id"

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5837
    :cond_6
    const-string/jumbo v6, "comment_view_show"

    invoke-static {p0}, Lddq;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 817
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5840
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .prologue
    .line 933
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 938
    .local v0, "uid":J
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 939
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->msgSenderAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 14
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1234
    instance-of v9, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v9, :cond_0

    if-nez p1, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p0

    .line 1237
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1238
    .local v1, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    const/4 v0, 0x0

    .line 1239
    .local v0, "chatSendType":I
    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v10, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToText:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v9, v10, :cond_3

    .line 1240
    const/4 v0, 0x1

    .line 1241
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    .line 1242
    .local v5, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v9, v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v9, :cond_2

    move-object v8, v5

    .line 1243
    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 1244
    .local v8, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    .line 1245
    .local v2, "emojiUtil":Lcok;
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcok;->a(Ljava/lang/String;)Z

    move-result v4

    .line 1246
    .local v4, "isAllEmotion":Z
    if-eqz v4, :cond_2

    .line 1247
    const/4 v0, 0x2

    .line 1263
    .end local v2    # "emojiUtil":Lcok;
    .end local v4    # "isAllEmotion":Z
    .end local v5    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v8    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1264
    invoke-static {p1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v6

    .line 1265
    .local v6, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "a2o5v.12290095"

    const-string/jumbo v10, "chat_send_click"

    invoke-static {v9, v10}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1266
    .local v7, "spmUrl":Ljava/lang/String;
    const-string/jumbo v9, "spm-url"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string/jumbo v9, "send_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    const-string/jumbo v10, "Page_Chat_Detail"

    const-string/jumbo v11, "Button-chat_send_click"

    invoke-interface {v9, v10, v11, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1250
    .end local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spmUrl":Ljava/lang/String;
    :cond_3
    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v10, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToPicture:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v9, v10, :cond_6

    .line 1251
    invoke-static {v1}, Ldkc;->y(Lcom/alibaba/wukong/im/Message;)I

    move-result v3

    .line 1252
    .local v3, "gifPicType":I
    int-to-long v10, v3

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    .line 1254
    const/4 v0, 0x4

    goto :goto_1

    .line 1255
    :cond_4
    int-to-long v10, v3

    const-wide/16 v12, -0xb

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5

    int-to-long v10, v3

    const-wide/16 v12, -0xd

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 1257
    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    .line 1259
    .end local v3    # "gifPicType":I
    :cond_6
    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v10, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToVoice:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v9, v10, :cond_2

    .line 1261
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Lcro;)V
    .locals 33
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "commentInputPanelManager"    # Lcro;

    .prologue
    .line 479
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v28

    if-eqz v28, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v28

    if-eqz v28, :cond_0

    if-nez p1, :cond_1

    .line 598
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 484
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v28

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v27

    .line 485
    .local v27, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v25

    .line 486
    .local v25, "type":I
    const-string/jumbo v24, ""

    .line 487
    .local v24, "tips":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 488
    .local v6, "content":Ljava/lang/String;
    const-string/jumbo v26, ""

    .line 489
    .local v26, "typeTip":Ljava/lang/String;
    sparse-switch v25, :sswitch_data_0

    .line 595
    :cond_2
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 5082
    move-object/from16 v0, p1

    iget-object v0, v0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :sswitch_0
    if-eqz v27, :cond_3

    .line 492
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 494
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_comment_link_tip:I

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string/jumbo v32, ""

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 495
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 496
    .local v12, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v6

    .line 497
    goto :goto_1

    .line 501
    .end local v12    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :sswitch_1
    if-eqz v27, :cond_4

    .line 502
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 504
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_comment_file_tip:I

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string/jumbo v32, ""

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 505
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v8, p0

    .line 506
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 507
    .local v8, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v0, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 508
    iget-object v0, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 509
    .local v19, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 514
    .end local v8    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v19    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :sswitch_2
    const-string/jumbo v28, "dingId"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_2

    .line 515
    if-eqz v27, :cond_5

    .line 516
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 518
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_ding_comment_tip_suffix:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 519
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    .line 520
    .local v14, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v0, v14, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 521
    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v14    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 527
    :sswitch_3
    const-string/jumbo v28, "dingId"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_2

    .line 528
    if-eqz v27, :cond_6

    .line 529
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 531
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_ding_comment_tip_suffix:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 532
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_ding_content_audio:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 536
    :sswitch_4
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 537
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 538
    .local v7, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_2

    .line 539
    if-eqz v27, :cond_7

    .line 540
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 542
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_ding_comment_tip_suffix:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 543
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->msgType()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "2"

    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 544
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_ding_content_audio:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 545
    :cond_8
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->msgType()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "1"

    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 546
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->content()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 553
    .end local v7    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    :sswitch_5
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 554
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 555
    .local v16, "oa":Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v18, v16

    .line 556
    check-cast v18, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 557
    .local v18, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    .line 558
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 559
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 560
    .local v20, "spannableString":Landroid/text/SpannableString;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lctk$c;->ui_common_level1_text_color:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 561
    .local v15, "normalColor":I
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v29, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x11

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 562
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcro;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    goto/16 :goto_0

    .line 568
    .end local v15    # "normalColor":I
    .end local v16    # "oa":Ljava/lang/Object;
    .end local v18    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .end local v20    # "spannableString":Landroid/text/SpannableString;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_6
    invoke-static/range {p0 .. p0}, Ldkc;->F(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v13

    .line 569
    .local v13, "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    if-eqz v13, :cond_2

    iget-object v0, v13, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaContentTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 571
    :try_start_0
    iget-object v0, v13, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaContentTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 572
    .local v17, "oaContentTitle":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_report_reply_comment_tips_AT:I

    invoke-virtual/range {v28 .. v29}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 573
    .local v11, "formattedText":Ljava/lang/String;
    const-string/jumbo v28, "%1$s"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 574
    .local v22, "startIndex":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    sget v29, Lctk$i;->dt_im_chat_report_reply_comment_tips_AT:I

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v17, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 575
    .local v23, "text":Ljava/lang/String;
    if-ltz v22, :cond_0

    .line 576
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    add-int v9, v22, v28

    .line 577
    .local v9, "endIndex":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-gt v9, v0, :cond_0

    .line 578
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 579
    .restart local v20    # "spannableString":Landroid/text/SpannableString;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lctk$c;->ui_common_level1_text_color:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 580
    .restart local v15    # "normalColor":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcid;->c()Landroid/app/Application;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lctk$c;->act_bar_btn_bg_normal:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    .line 581
    .local v21, "specialColor":I
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v29, 0x0

    const/16 v30, 0x11

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v22

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 582
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v29, 0x11

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v22

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 583
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x11

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 584
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcro;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 587
    .end local v9    # "endIndex":I
    .end local v11    # "formattedText":Ljava/lang/String;
    .end local v15    # "normalColor":I
    .end local v17    # "oaContentTitle":Ljava/lang/String;
    .end local v20    # "spannableString":Landroid/text/SpannableString;
    .end local v21    # "specialColor":I
    .end local v22    # "startIndex":I
    .end local v23    # "text":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 588
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x66 -> :sswitch_0
        0xfc -> :sswitch_3
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
        0x578 -> :sswitch_6
        0x640 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/Map;ZLcma;)V
    .locals 12
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "like"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "atMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Lgqw;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    if-nez p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    :cond_2
    invoke-static {p0}, Ldqr;->a(Lcom/alibaba/wukong/im/Message;)Ldqr;

    move-result-object v11

    .line 3047
    .local v11, "commentParamModel":Ldqr;
    iget-object v0, v11, Ldqr;->a:Ljava/lang/String;

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    if-eqz p3, :cond_3

    .line 459
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 4047
    iget-object v1, v11, Ldqr;->a:Ljava/lang/String;

    .line 4051
    iget v2, v11, Ldqr;->b:I

    .line 4055
    iget-object v3, v11, Ldqr;->c:Ljava/lang/String;

    .line 4059
    iget-object v4, v11, Ldqr;->d:Ljava/lang/String;

    .line 4063
    iget-object v5, v11, Ldqr;->e:Ljava/lang/String;

    move-object/from16 v6, p4

    .line 459
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 5047
    iget-object v1, v11, Ldqr;->a:Ljava/lang/String;

    .line 5051
    iget v2, v11, Ldqr;->b:I

    .line 5055
    iget-object v3, v11, Ldqr;->c:Ljava/lang/String;

    .line 463
    const-wide/16 v4, 0x0

    .line 5059
    iget-object v8, v11, Ldqr;->d:Ljava/lang/String;

    .line 5063
    iget-object v9, v11, Ldqr;->e:Ljava/lang/String;

    move-object v6, p2

    move-object v7, p1

    move-object/from16 v10, p4

    .line 462
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;ZZ)V
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "liked"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v0, "likedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "msg_comment_like"

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-interface {p0, v0, p2}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;Z)V

    goto :goto_0

    .line 427
    :cond_1
    const-string/jumbo v1, "-1"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 15
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p1, "messageId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "srcLanguage"    # Ljava/lang/String;
    .param p5, "targetLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p6, "listener":Lcma;, "Lcma<Ldux;>;"
    if-nez p6, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1127
    new-instance v5, Lddq$6;

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v2}, Lddq$6;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    .local v5, "callback":Lcma;, "Lcma<Ldux;>;"
    new-instance v7, Lduw;

    invoke-direct {v7}, Lduw;-><init>()V

    .line 1156
    .local v7, "request":Lduw;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1157
    .local v4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "messageId"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string/jumbo v10, "sessionId"

    invoke-interface {v4, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string/jumbo v10, "action"

    const-string/jumbo v11, "send_tranx"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1161
    const-string/jumbo v10, "currentCompanyId"

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_2
    iput-object v4, v7, Lduw;->g:Ljava/util/Map;

    .line 1164
    const-wide/16 v8, 0x0

    .line 1165
    .local v8, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1166
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v10

    iget-wide v8, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1168
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lduw;->e:Ljava/lang/String;

    .line 1169
    move-object/from16 v0, p4

    iput-object v0, v7, Lduw;->b:Ljava/lang/String;

    .line 1170
    move-object/from16 v0, p5

    iput-object v0, v7, Lduw;->c:Ljava/lang/String;

    .line 1171
    move-object/from16 v0, p3

    iput-object v0, v7, Lduw;->a:Ljava/lang/String;

    .line 1172
    const-string/jumbo v10, "chat_auto"

    iput-object v10, v7, Lduw;->d:Ljava/lang/String;

    .line 1173
    new-instance v6, Lddq$7;

    invoke-direct {v6, v5}, Lddq$7;-><init>(Lcma;)V

    .line 1174
    .local v6, "handler":Lcme;, "Lcme<Ldux;>;"
    const-class v10, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;

    invoke-interface {v10, v7, v6}, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;->translate(Lduw;Liyv;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcma;)V
    .locals 9
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p1, "messageId"    # J
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "translatedText"    # Ljava/lang/String;
    .param p7, "modifiedText"    # Ljava/lang/String;
    .param p8, "isModified"    # Z
    .param p9, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p10, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v3, Lduv;

    invoke-direct {v3}, Lduv;-><init>()V

    .line 1183
    .local v3, "translateReportModel":Lduv;
    iput-object p0, v3, Lduv;->a:Ljava/lang/String;

    .line 1184
    iput-object p3, v3, Lduv;->b:Ljava/lang/String;

    .line 1185
    iput-object p4, v3, Lduv;->c:Ljava/lang/String;

    .line 1186
    move-object/from16 v0, p9

    iput-object v0, v3, Lduv;->i:Ljava/lang/String;

    .line 1187
    move-object/from16 v0, p7

    iput-object v0, v3, Lduv;->f:Ljava/lang/String;

    .line 1189
    const-wide/16 v4, 0x0

    .line 1190
    .local v4, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1191
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1193
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lduv;->j:Ljava/lang/Long;

    .line 1195
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1196
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lduv;->h:Ljava/lang/String;

    .line 1199
    :cond_1
    iput-object p5, v3, Lduv;->d:Ljava/lang/String;

    .line 1200
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lduv;->g:Ljava/lang/Boolean;

    .line 1201
    iput-object p6, v3, Lduv;->e:Ljava/lang/String;

    .line 1202
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lduv;->k:Ljava/lang/String;

    .line 1204
    new-instance v2, Lddq$8;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Lddq$8;-><init>(Lcma;)V

    .line 1205
    .local v2, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v6, Lcom/alibaba/android/dingtalkim/models/idl/service/AnalysisIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/models/idl/service/AnalysisIService;

    invoke-interface {v6, v3, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/AnalysisIService;->autoTranslateAnalysis(Lduv;Liyv;)V

    .line 1207
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 185
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x1

    .line 122
    if-eqz p0, :cond_1

    .line 123
    invoke-static {p0}, Lddq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 125
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;I)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "commentObjectTypeFile"    # I

    .prologue
    const/4 v2, 0x0

    .line 622
    invoke-static {p0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v2

    .line 626
    :cond_1
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 628
    .local v0, "orgId":J
    if-nez p1, :cond_2

    .line 629
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "msg_reaction_card"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    goto :goto_0

    .line 630
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 631
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "msg_reaction_card_link"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;J)Z
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "messageId"    # J

    .prologue
    const/4 v1, 0x1

    .line 218
    if-eqz p0, :cond_1

    .line 219
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 220
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    const-string/jumbo v2, "announceUnread"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 222
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "announceUnread"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string/jumbo v2, "announceUnread"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v2, "announceUnreadCreateTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 236
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 229
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "announceUnread"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v2, "announceUnreadCreateTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    goto :goto_0

    .line 236
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 433
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "msg_comment_like"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "msg_comment_like"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 720
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v3

    .line 723
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 725
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v4, "_dt_no_comment"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "commentDisable":Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 732
    .end local v0    # "commentDisable":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "ChatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[ChatUtil] isUrlSupportComment exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 312
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 313
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "ChatMsgSender"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 315
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 316
    return-object v0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 12
    .param p0, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v5, 0x0

    .line 959
    if-nez p0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-object v5

    .line 962
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->n()Ljava/util/List;

    move-result-object v3

    .line 963
    .local v3, "tagPriorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->m()Ljava/util/Map;

    move-result-object v2

    .line 964
    .local v2, "tagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccr$a;>;"
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v2, :cond_0

    .line 965
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->getUserTitleConfig()Ljava/util/Map;

    move-result-object v4

    .line 968
    .local v4, "titleConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;>;"
    if-eqz v4, :cond_0

    .line 969
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 970
    .local v1, "priorityTag":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;

    .line 972
    .local v7, "userTagConfig":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->isExpired()Z

    move-result v9

    if-nez v9, :cond_2

    .line 976
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "-"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->level:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccr$a;

    .line 977
    .local v6, "userTag":Lccr$a;
    if-eqz v6, :cond_2

    .line 978
    const/4 v5, 0x0

    .line 980
    .local v5, "url":Ljava/lang/String;
    :try_start_0
    iget-object v8, v6, Lccr$a;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "onProcessingListener"    # Lcts$c;

    .prologue
    const/4 v2, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {p1}, Ldqr;->a(Lcom/alibaba/wukong/im/Message;)Ldqr;

    move-result-object v1

    .line 388
    .local v1, "commentParamModel":Ldqr;
    invoke-static {p1, v2, v2}, Lddq;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 390
    new-instance v0, Lddq$2;

    invoke-direct {v0, p2, p1}, Lddq$2;-><init>(Lcts$c;Lcom/alibaba/wukong/im/Message;)V

    .line 415
    .local v0, "callback":Lcma;, "Lcma<Lgqw;>;"
    if-eqz p0, :cond_1

    .line 416
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Lgqw;>;"
    check-cast v0, Lcma;

    .line 419
    .restart local v0    # "callback":Lcma;, "Lcma<Lgqw;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 2047
    iget-object v3, v1, Ldqr;->a:Ljava/lang/String;

    .line 2051
    iget v4, v1, Ldqr;->b:I

    .line 419
    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "ctrlClickString"    # Ljava/lang/String;

    .prologue
    .line 757
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f6

    if-eq v4, v5, :cond_2

    .line 762
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_2

    .line 763
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_0

    .line 764
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 765
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "uid":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 768
    .local v2, "orgId":J
    const-string/jumbo v4, "user_id"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string/jumbo v4, "org_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 139
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "uids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 141
    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v2

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 142
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 11
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 641
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_0
    move v2, v6

    .line 709
    :cond_1
    :goto_0
    return v2

    .line 649
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    .line 651
    .local v4, "messageType":I
    sparse-switch v4, :sswitch_data_0

    move v2, v6

    .line 709
    goto :goto_0

    .line 655
    :sswitch_0
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v7

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    .line 656
    goto :goto_0

    .line 659
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-static {v7, v6}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;I)Z

    move-result v1

    .local v1, "isOrgAllow":Z
    move v2, v1

    .line 661
    goto :goto_0

    .line 663
    .end local v1    # "isOrgAllow":Z
    :sswitch_1
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v8

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    .line 664
    goto :goto_0

    .line 668
    :cond_4
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    invoke-static {v8, v7}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;I)Z

    move-result v1

    .line 670
    .restart local v1    # "isOrgAllow":Z
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "reaction_card"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "1"

    .line 671
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v10, "reaction_card"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v2, v7

    .line 674
    .local v2, "isReactionCardAllow":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v8, :cond_5

    .line 675
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 676
    .local v3, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lddq;->a(Ljava/lang/String;)Z

    move-result v2

    .line 679
    .end local v3    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    move v2, v7

    goto/16 :goto_0

    .end local v2    # "isReactionCardAllow":Z
    :cond_6
    move v2, v6

    .line 671
    goto :goto_1

    .restart local v2    # "isReactionCardAllow":Z
    :cond_7
    move v2, v6

    .line 679
    goto/16 :goto_0

    .line 683
    .end local v1    # "isOrgAllow":Z
    .end local v2    # "isReactionCardAllow":Z
    :sswitch_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "reaction_card"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "1"

    .line 684
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v10, "reaction_card"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v2, v7

    .line 685
    .restart local v2    # "isReactionCardAllow":Z
    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v7, :cond_1

    .line 686
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 687
    .local v5, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 688
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 689
    .local v0, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lddq;->a(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    .end local v0    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v2    # "isReactionCardAllow":Z
    .end local v5    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_8
    move v2, v6

    .line 684
    goto :goto_2

    .line 700
    :sswitch_3
    const-string/jumbo v7, "dingId"

    invoke-interface {p0, v7}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    move v2, v6

    .line 701
    goto/16 :goto_0

    .line 704
    :cond_9
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "reaction_card"

    invoke-interface {p0, v7}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 706
    .restart local v2    # "isReactionCardAllow":Z
    goto/16 :goto_0

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0x66 -> :sswitch_1
        0xfc -> :sswitch_3
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sendString"    # Ljava/lang/String;

    .prologue
    .line 1210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "$-$+$+$-$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "reactionKey"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 847
    const-wide/16 v2, 0x0

    .line 849
    .local v2, "result":J
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-wide v4

    .line 853
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "likeCount":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 859
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 6044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    .line 864
    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string/jumbo v0, "chat_sender_filepicker/"

    return-object v0
.end method

.method public static c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 8
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1086
    if-eqz p0, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 1087
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v6, "chatbot"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1088
    .local v4, "robotName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1090
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "markedName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1092
    .local v3, "objectStr":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 1093
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 1104
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "objectStr":Lorg/json/JSONObject;
    .end local v4    # "robotName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1098
    .restart local v4    # "robotName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const-string/jumbo v7, "json format fail"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1104
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "robotName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_im_robot_robotmark:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "hasFestivalRedPacketEntry":Z
    if-eqz p0, :cond_2

    .line 155
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xd

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 159
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 160
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 161
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 165
    :cond_1
    const/4 v0, 0x1

    .line 168
    :cond_2
    return v0
.end method

.method public static d()I
    .locals 6

    .prologue
    .line 944
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_im"

    const-string/jumbo v5, "dt_im_long_text_limit"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, "longTextLimit":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 947
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 948
    .local v1, "limit":I
    if-lez v1, :cond_0

    .line 955
    .end local v1    # "limit":I
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 955
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v1, 0x1770

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1108
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "chatbot"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    const/4 v0, 0x1

    .line 1111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 176
    .local v0, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-static {p0}, Lddq;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pre_key_chat_festival_redpacket_clicked_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 180
    :cond_0
    return v1
.end method

.method public static e()J
    .locals 4

    .prologue
    .line 1009
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1010
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 205
    if-eqz p0, :cond_1

    .line 206
    invoke-static {p0}, Lddq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-static {p0}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 3

    .prologue
    .line 1065
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "config_switch_key_todo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1073
    invoke-static {}, Lcms;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v0

    .line 1076
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "cspace_hybrid_edit_enable_v4"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    const-string/jumbo v0, "im_online_edit_guide_first_show"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x1

    .line 251
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 1217
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_system_msg_update_lastmsg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 255
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1221
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_check_o2o_enable"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_check_o2o_enable"

    .line 12083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1222
    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 265
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 298
    if-nez p0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 302
    .local v0, "localExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 305
    const-string/jumbo v1, "anchorType"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "anchorMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v1, "messageCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 605
    invoke-static {p0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    const/4 v2, 0x0

    .line 610
    :goto_0
    return v2

    .line 609
    :cond_0
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 5618
    .local v0, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "msg_reaction_card_link"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 18
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    if-nez p0, :cond_1

    .line 1015
    const/4 v5, 0x0

    .line 1056
    :cond_0
    :goto_0
    return-object v5

    .line 1018
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 1019
    invoke-static/range {p0 .. p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v10

    .line 1020
    .local v10, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v12

    const/16 v13, 0x40

    invoke-virtual {v12, v10, v11, v13}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JI)Ljava/util/List;

    move-result-object v5

    .line 1021
    .local v5, "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-nez v5, :cond_2

    .line 1022
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .restart local v5    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_2
    const-string/jumbo v12, "aids"

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1025
    .local v4, "agentIds":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1026
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v3, "agentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_3

    aget-object v2, v13, v12

    .line 11109
    .local v2, "agentId":Ljava/lang/String;
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1028
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1030
    .end local v2    # "agentId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v12

    invoke-virtual {v12, v10, v11, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JLjava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1031
    .local v7, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v7, :cond_0

    .line 1032
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1033
    .local v8, "bingdingApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v8, :cond_4

    .line 1036
    const/4 v9, 0x0

    .line 1037
    .local v9, "exist":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1038
    .local v6, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v6, :cond_5

    .line 1041
    iget-wide v14, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    iget-wide v0, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 1042
    const/4 v9, 0x1

    .line 1046
    .end local v6    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_6
    if-nez v9, :cond_4

    .line 1047
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1053
    .end local v3    # "agentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "agentIds":Ljava/lang/String;
    .end local v5    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v7    # "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v8    # "bingdingApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v9    # "exist":Z
    .end local v10    # "orgId":J
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    const/4 v12, 0x2

    :goto_3
    invoke-virtual {v13, v14, v15, v12}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JI)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    goto/16 :goto_0

    .end local v5    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_8
    const/4 v12, 0x4

    goto :goto_3
.end method
