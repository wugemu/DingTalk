.class final Ldjw$2;
.super Ljava/lang/Object;
.source "InitializeHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjw;


# direct methods
.method constructor <init>(Ldjw;)V
    .locals 0
    .param p1, "this$0"    # Ldjw;

    .prologue
    .line 154
    iput-object p1, p0, Ldjw$2;->a:Ldjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    .local p1, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 272
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    const/16 v7, 0x2bc

    if-ne v5, v7, :cond_0

    .line 273
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 274
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-static {v4}, Ldjw$2;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    if-nez p2, :cond_1

    .line 276
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 278
    .restart local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 279
    .local v1, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 280
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 282
    :cond_2
    if-nez v1, :cond_3

    .line 283
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    .restart local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-wide/16 v2, 0x0

    .line 286
    .local v2, "createTime":J
    const-string/jumbo v5, "announceUnread"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 288
    :try_start_0
    const-string/jumbo v5, "announceUnreadCreateTime"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 292
    :cond_4
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-lez v5, :cond_5

    .line 293
    const-string/jumbo v5, "announceUnread"

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v5, "announceUnreadCreateTime"

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "createTime":J
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_6
    return-object p2

    .restart local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .restart local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "createTime":J
    .restart local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "specialMsg"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "atUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 549
    const-string/jumbo v0, "anchorType"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 551
    const-string/jumbo v0, "anchorMessageId"

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_0
    const-string/jumbo v0, "messageCreateTime"

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 555
    const-string/jumbo v0, "at_uid"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Ljava/lang/String;)V
    .locals 15
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    if-nez v10, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-static/range {p1 .. p1}, Ldjw$2;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v12

    invoke-virtual {v12}, Lccr;->c()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 341
    move-object/from16 v0, p1

    instance-of v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v10, :cond_0

    move-object/from16 v10, p1

    .line 345
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v10, v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-nez v10, :cond_5

    .line 347
    invoke-static/range {p1 .. p1}, Ldit;->a(Lcom/alibaba/wukong/im/Message;)Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    move-result-object v2

    .line 348
    .local v2, "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    if-eqz v2, :cond_0

    .line 351
    invoke-static {v2}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .end local v2    # "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .local v6, "jsonString":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 360
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    .line 361
    .local v4, "conversation":Lcom/alibaba/wukong/im/Conversation;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 362
    .local v9, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_2

    .line 363
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v9

    .line 364
    if-nez v9, :cond_2

    .line 365
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 368
    .restart local v9    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 369
    .local v8, "list":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 370
    const-string/jumbo v8, ""

    .line 374
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    .local v3, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "_repackets===repackets_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    const/16 v11, 0x9

    if-ge v10, v11, :cond_6

    .line 377
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 379
    const-string/jumbo v10, "_repackets===repackets_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 392
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 395
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "im"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "updateRedPacketsBanner error="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 396
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 395
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v8    # "list":Ljava/lang/String;
    .end local v9    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v10, p1

    .line 354
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    invoke-static {v10}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "jsonString":Ljava/lang/String;
    goto/16 :goto_1

    .line 384
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v8    # "list":Ljava/lang/String;
    .restart local v9    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    const-string/jumbo v10, "_repackets===repackets_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 385
    .local v7, "lastIndex":I
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_repackets===repackets_"

    .line 387
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 388
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 402
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v0, v1, :cond_0

    .line 403
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(J)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    .local p1, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p2, :cond_0

    .line 306
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 308
    .restart local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 309
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "consumed":Z
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    .line 314
    .local v2, "type":I
    sparse-switch v2, :sswitch_data_0

    .line 326
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v4, v5, :cond_1

    .line 327
    const-string/jumbo v4, "enterprise_redpackests_list"

    invoke-direct {p0, v1, p2, v4}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :sswitch_0
    const-string/jumbo v4, "enterprise_redpackests_list"

    invoke-direct {p0, v1, p2, v4}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Ljava/lang/String;)V

    .line 323
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 320
    :sswitch_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_red_packets_enterprise_b2c"

    invoke-virtual {v4, v5}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const-string/jumbo v4, "enterprise_b2c_redpackets_list"

    invoke-direct {p0, v1, p2, v4}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    .end local v0    # "consumed":Z
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v2    # "type":I
    :cond_3
    return-object p2

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x38c -> :sswitch_1
    .end sparse-switch
.end method

.method private static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 542
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    .line 543
    .local v0, "imInterface":Lcom/alibaba/android/dingtalkim/base/IMInterface;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v9, "specialMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/Message;

    .line 412
    .local v8, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 413
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {v8}, Ldjw$2;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 416
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    const-wide/16 v20, 0x4

    cmp-long v15, v18, v20

    if-eqz v15, :cond_0

    .line 419
    :cond_1
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 420
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/Message;

    move-object v12, v15

    .line 422
    .local v12, "specialMsg":Lcom/alibaba/wukong/im/Message;
    :goto_1
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isAtAll()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 423
    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAtAll()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v18

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-lez v15, :cond_4

    .line 424
    :cond_3
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-virtual {v9, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_4
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/alibaba/wukong/im/Conversation;->updateAtMeStatus(Z)V

    .line 427
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 429
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ldbu;->a(Z)V

    .line 431
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v15

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v17

    .line 7067
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 7070
    invoke-static {}, Ldbq;->c()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v18

    new-instance v19, Ldbq$2;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Ldbq$2;-><init>(Ldbq;Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 420
    .end local v12    # "specialMsg":Lcom/alibaba/wukong/im/Message;
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 433
    .restart local v12    # "specialMsg":Lcom/alibaba/wukong/im/Message;
    :cond_6
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    const/16 v17, 0x2bc

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 434
    if-eqz v12, :cond_7

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    const/16 v17, 0x2bc

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v18

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-gez v15, :cond_0

    .line 437
    :cond_7
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-virtual {v9, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 439
    :cond_8
    invoke-static {v8}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 440
    if-eqz v12, :cond_9

    .line 441
    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-nez v15, :cond_0

    .line 442
    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    const/16 v17, 0x2bc

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 443
    invoke-static {v12}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v18

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-lez v15, :cond_0

    .line 446
    :cond_9
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    invoke-virtual {v9, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 450
    .end local v8    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v12    # "specialMsg":Lcom/alibaba/wukong/im/Message;
    :cond_a
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 451
    .local v7, "iter":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 452
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 453
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Conversation;

    .line 454
    .local v3, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/Message;

    .line 455
    .restart local v12    # "specialMsg":Lcom/alibaba/wukong/im/Message;
    if-nez p2, :cond_c

    .line 456
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    .line 458
    .restart local p2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 459
    .local v4, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_d

    .line 460
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 461
    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_d
    const-string/jumbo v13, ""

    .line 464
    .local v13, "specialType":Ljava/lang/String;
    if-nez v4, :cond_f

    const-string/jumbo v2, ""

    .line 465
    .local v2, "atUid":Ljava/lang/String;
    :goto_3
    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 466
    const-string/jumbo v13, "at"

    .line 467
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v15

    invoke-virtual {v15}, Lccr;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 478
    :cond_e
    :goto_4
    if-nez v4, :cond_13

    .line 479
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 480
    .restart local v4    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    .end local v2    # "atUid":Ljava/lang/String;
    :cond_f
    const-string/jumbo v15, "at_uid"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v2, v15

    goto :goto_3

    .line 468
    .restart local v2    # "atUid":Ljava/lang/String;
    :cond_10
    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->isAtAll()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 469
    const-string/jumbo v13, "at_all"

    .line 470
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 471
    const-string/jumbo v2, "10"

    goto :goto_4

    .line 473
    :cond_11
    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    const/16 v16, 0x2bc

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 474
    const-string/jumbo v13, "announce"

    goto :goto_4

    .line 475
    :cond_12
    invoke-static {v12}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 476
    const-string/jumbo v13, "special"

    goto :goto_4

    .line 483
    :cond_13
    const-wide v10, 0x7fffffffffffffffL

    .line 484
    .local v10, "msgTime":J
    const-string/jumbo v14, ""

    .line 488
    .local v14, "type":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v15, "anchorType"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 489
    const-string/jumbo v15, "anchorType"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 490
    const-string/jumbo v15, "messageCreateTime"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 495
    :cond_14
    :goto_5
    const-string/jumbo v15, "redpackets"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 496
    const-string/jumbo v15, "redpackets"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-lez v15, :cond_b

    .line 497
    :cond_15
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 492
    :catch_0
    move-exception v6

    .line 493
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_5

    .line 499
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_16
    const-string/jumbo v15, "at"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 500
    const-string/jumbo v15, "at"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-lez v15, :cond_b

    .line 501
    :cond_17
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 503
    :cond_18
    const-string/jumbo v15, "at_all"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 504
    const-string/jumbo v15, "at_all"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-lez v15, :cond_b

    .line 505
    :cond_19
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 507
    :cond_1a
    const-string/jumbo v15, "announce"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 508
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->hasUnreadAtMeMessage()Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "at"

    .line 509
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "announce"

    .line 510
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-gez v15, :cond_b

    .line 513
    :cond_1b
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 515
    :cond_1c
    const-string/jumbo v15, "special"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 516
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->hasUnreadAtMeMessage()Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "at"

    .line 517
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "announce"

    .line 518
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "special"

    .line 519
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-lez v15, :cond_b

    .line 522
    :cond_1d
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 524
    :cond_1e
    const-string/jumbo v15, "redpackets"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 525
    invoke-static {v3, v4, v12, v13, v2}, Ldjw$2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 529
    .end local v2    # "atUid":Ljava/lang/String;
    .end local v3    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v10    # "msgTime":J
    .end local v12    # "specialMsg":Lcom/alibaba/wukong/im/Message;
    .end local v13    # "specialType":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_1f
    return-object p2
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 24
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_1f

    .line 160
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/Message;

    .line 161
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v9, :cond_0

    .line 166
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v14

    const-wide/16 v18, 0x3

    cmp-long v14, v14, v18

    if-eqz v14, :cond_1

    .line 167
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0x190

    if-ne v14, v15, :cond_2

    .line 168
    :cond_1
    const-string/jumbo v14, "_pref_notification"

    invoke-static {v14}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v13

    .line 169
    .local v13, "userNotificationSwitch":Z
    sget v11, Lctk$e;->notification_icon_small:I

    .line 170
    .local v11, "notificationSmallIcon":I
    sget v10, Lctk$e;->notification_icon_big:I

    .line 172
    .local v10, "notificationBigIcon":I
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v8

    .line 173
    .local v8, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v8, v9, v11, v10, v13}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Lcom/alibaba/wukong/im/Message;IIZ)V

    .line 180
    .end local v8    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v10    # "notificationBigIcon":I
    .end local v11    # "notificationSmallIcon":I
    .end local v13    # "userNotificationSwitch":Z
    :cond_2
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v14

    sget-object v15, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v14, v15, :cond_3

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v14

    const-wide/16 v18, 0xc8

    cmp-long v14, v14, v18

    if-nez v14, :cond_3

    .line 181
    const-string/jumbo v14, "crypto"

    const-string/jumbo v15, "crypto"

    const-string/jumbo v17, "Receiver leave enterprise msg."

    move-object/from16 v0, v17

    invoke-static {v14, v15, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 183
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/alibaba/wukong/im/Conversation;->removeLocalPreviousMessages(Lcom/alibaba/wukong/im/Message;)V

    .line 184
    invoke-static {}, Ldhr;->a()Ldhr;

    move-result-object v14

    .line 1056
    iget-object v15, v14, Ldhr;->b:Ljava/util/LinkedList;

    if-eqz v15, :cond_3

    if-eqz v9, :cond_3

    .line 1057
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v15

    sget-object v17, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_3

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v18

    const-wide/16 v20, 0xc8

    cmp-long v15, v18, v20

    if-nez v15, :cond_3

    .line 1059
    iget-object v15, v14, Ldhr;->b:Ljava/util/LinkedList;

    invoke-virtual {v15, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual {v14}, Ldhr;->b()V

    .line 1599
    :cond_3
    instance-of v14, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v14, :cond_4

    .line 1600
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v14

    const-string/jumbo v15, "f_im_voip_not_connect_tip_show"

    .line 2083
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v14

    .line 1600
    if-eqz v14, :cond_4

    .line 1601
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v15, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1602
    invoke-static {}, Lcms;->c()Z

    move-result v14

    if-nez v14, :cond_10

    .line 2629
    :cond_4
    :goto_1
    const-string/jumbo v14, "user_service"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v14

    new-instance v15, Ldjw$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Ldjw$2$1;-><init>(Ldjw$2;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v14, v15}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2645
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 2646
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_5

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0xfc

    if-ne v14, v15, :cond_15

    .line 2647
    :cond_5
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 2648
    invoke-static {v14, v9}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v17

    .line 2649
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_13

    .line 2650
    invoke-static {}, Lctj;->d()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2651
    const-string/jumbo v15, "AUDIOEX"

    invoke-static {v15}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getData()[B

    move-result-object v14

    sget-object v18, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v14, v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->update2RemoteUrl([BLjava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V

    .line 193
    :cond_6
    :goto_2
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 194
    const/4 v12, 0x0

    .line 196
    .local v12, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    const-string/jumbo v14, "im"

    const-string/jumbo v15, "t_msg_add_noti"

    invoke-static {v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v12

    .line 197
    if-eqz v12, :cond_7

    .line 198
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "app recv msg :"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " cid "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " crt cid "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 199
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v15

    .line 198
    invoke-interface {v12, v14}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_7
    if-eqz v12, :cond_8

    .line 203
    invoke-interface {v12}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 3534
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v14

    .line 3535
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 3536
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3537
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->j()Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_9
    const/4 v14, 0x1

    .line 206
    :goto_3
    if-eqz v14, :cond_f

    .line 207
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v14

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->b()Lchy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lchy;->getCurrentUid()J

    move-result-wide v18

    cmp-long v14, v14, v18

    if-eqz v14, :cond_f

    .line 208
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v14

    sget-object v17, Lcom/alibaba/android/dingtalkim/IMConstant;->a:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v14, v14, v18

    if-eqz v14, :cond_f

    .line 209
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v14

    sget-object v15, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v14, v15, :cond_f

    .line 210
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v14

    sget-object v15, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v14, v15, :cond_f

    .line 211
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v14

    if-nez v14, :cond_f

    .line 212
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v18, 0x28687

    cmp-long v14, v14, v18

    if-eqz v14, :cond_f

    .line 215
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v14

    if-nez v14, :cond_f

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    iget-object v14, v14, Ldjw;->b:Ljava/lang/Boolean;

    if-nez v14, :cond_a

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Ldjw;->b:Ljava/lang/Boolean;

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    iget-object v14, v14, Ldjw;->b:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 221
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v14, v15, :cond_1a

    .line 223
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v14

    const-string/jumbo v15, "f_xpn_huawei_o_enable"

    invoke-virtual {v14, v15}, Lchx;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Ldjw;->b:Ljava/lang/Boolean;

    .line 232
    :cond_a
    :goto_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportFCM(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->isFromChina()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 233
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v14

    const-string/jumbo v15, "wk_xpn"

    const-string/jumbo v17, "fcm_zh_open"

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "1"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    :cond_b
    const/4 v6, 0x1

    .line 234
    .local v6, "isFcmSupported":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    iget-object v14, v14, Ldjw;->b:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    sget-object v14, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_f

    .line 3694
    :cond_d
    if-eqz v9, :cond_f

    .line 3695
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    .line 3696
    if-eqz v15, :cond_f

    .line 3697
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v14

    .line 3698
    if-nez v14, :cond_e

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 3699
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    .line 4103
    iget-object v14, v14, Ldjw;->a:Ljava/util/HashMap;

    .line 3699
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/Message;

    .line 3700
    if-eqz v14, :cond_1c

    .line 3701
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-eqz v17, :cond_f

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v18

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v20

    cmp-long v14, v18, v20

    if-gtz v14, :cond_f

    .line 3702
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    .line 5103
    iget-object v14, v14, Ldjw;->a:Ljava/util/HashMap;

    .line 3702
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v6    # "isFcmSupported":Z
    .end local v12    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_f
    :goto_6
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    .line 245
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v14

    const-wide/16 v18, 0xa

    cmp-long v14, v14, v18

    if-nez v14, :cond_0

    .line 246
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v14

    if-nez v14, :cond_0

    .line 247
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v14

    sget-object v15, Lble;->s:Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_10
    move-object v14, v9

    .line 1605
    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1606
    iget-object v15, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v15, :cond_4

    iget-object v14, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v14, v14, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    if-eqz v14, :cond_4

    .line 1607
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v14

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->b()Lchy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lchy;->getCurrentUid()J

    move-result-wide v18

    cmp-long v14, v14, v18

    if-eqz v14, :cond_4

    move-object v14, v9

    .line 1608
    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v14, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 1609
    iget v15, v14, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->state:I

    if-eqz v15, :cond_4

    .line 1610
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v15

    iget v14, v14, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->errCode:I

    invoke-virtual {v15, v14}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    move-result-object v14

    .line 1612
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    .line 1613
    if-eqz v15, :cond_4

    .line 1614
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v18

    .line 1615
    const-string/jumbo v15, "pref_key_voip_call_not_connected_time"

    move-wide/from16 v0, v18

    invoke-static {v15, v0, v1}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v20

    .line 1616
    sub-long v20, v18, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    .line 1617
    const-wide/32 v22, 0x5265c00

    cmp-long v15, v20, v22

    if-gez v15, :cond_11

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-nez v15, :cond_4

    :cond_11
    sget-object v15, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    if-eq v14, v15, :cond_4

    .line 1619
    invoke-static {}, Lder;->a()Lder;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-static {v14}, Lder;->d(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1621
    const-string/jumbo v14, "pref_key_voip_call_not_connected_time"

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1}, Lcpk;->b(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 2653
    :cond_12
    const-string/jumbo v15, "AUDIO"

    invoke-static {v15}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getData()[B

    move-result-object v14

    move-object/from16 v0, v17

    invoke-interface {v15, v14, v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->update2RemoteUrl([BLjava/lang/String;)V

    goto/16 :goto_2

    .line 2655
    :cond_13
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getOpusData()[B

    move-result-object v15

    if-eqz v15, :cond_14

    invoke-static {}, Lctj;->d()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 2656
    const-string/jumbo v15, "AUDIOEX"

    invoke-static {v15}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getOpusData()[B

    move-result-object v14

    sget-object v18, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v14, v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->update2RemoteUrl([BLjava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V

    goto/16 :goto_2

    .line 2658
    :cond_14
    new-instance v14, Lhzu;

    invoke-direct {v14}, Lhzu;-><init>()V

    .line 2659
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2660
    const-string/jumbo v18, "mediaId"

    invoke-static/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    const-string/jumbo v17, "msgId"

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    const-string/jumbo v17, "im"

    move-object/from16 v0, v17

    iput-object v0, v14, Lhzu;->a:Ljava/lang/String;

    .line 2663
    iput-object v15, v14, Lhzu;->b:Ljava/util/Map;

    .line 2664
    const/16 v15, 0xcd

    iput v15, v14, Lhzu;->c:I

    .line 2665
    const-string/jumbo v15, "\u8bed\u97f3\u63a8\u9001\u5931\u8d25"

    iput-object v15, v14, Lhzu;->d:Ljava/lang/String;

    .line 2666
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v15

    invoke-virtual {v15, v14}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_2

    .line 2668
    :cond_15
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_16

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0xfb

    if-ne v14, v15, :cond_6

    .line 2669
    :cond_16
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 2670
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_17

    .line 2671
    const-string/jumbo v15, "IMAGE"

    invoke-static {v15}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/image/ImageMagician;

    const/16 v17, 0x0

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getData()[B

    move-result-object v18

    invoke-static {v14, v9}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcpt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1, v14}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2CacheInMainThread(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    goto/16 :goto_2

    .line 2673
    :cond_17
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-static {v15}, Ldkc;->a(Lcom/alibaba/wukong/im/MessageContent;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 2674
    new-instance v15, Lhzu;

    invoke-direct {v15}, Lhzu;-><init>()V

    .line 2675
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2676
    const-string/jumbo v18, "mediaId"

    invoke-static {v14, v9}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    const-string/jumbo v14, "msgId"

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    const-string/jumbo v14, "im"

    iput-object v14, v15, Lhzu;->a:Ljava/lang/String;

    .line 2679
    move-object/from16 v0, v17

    iput-object v0, v15, Lhzu;->b:Ljava/util/Map;

    .line 2680
    const/16 v14, 0xcc

    iput v14, v15, Lhzu;->c:I

    .line 2681
    const-string/jumbo v14, "\u7f29\u7565\u56fe\u63a8\u9001\u5931\u8d25"

    iput-object v14, v15, Lhzu;->d:Ljava/lang/String;

    .line 2682
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v14

    invoke-virtual {v14, v15}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_2

    .line 202
    .restart local v12    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_18

    .line 203
    invoke-interface {v12}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_18
    throw v14

    .line 3537
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 226
    :cond_1a
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v14

    const-string/jumbo v15, "f_xpn_huawei_less_o_enable"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Ldjw;->b:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 233
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3705
    .restart local v6    # "isFcmSupported":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Ldjw$2;->a:Ldjw;

    .line 6103
    iget-object v14, v14, Ldjw;->a:Ljava/util/HashMap;

    .line 3705
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 252
    .end local v6    # "isFcmSupported":Z
    .end local v9    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v12    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_1d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Ldjw$2;->c(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 253
    .local v5, "extras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Ldjw$2;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Ldjw$2;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 255
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ldwo;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 256
    if-eqz v5, :cond_1f

    .line 257
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 258
    .local v7, "iterator":Ljava/util/Iterator;
    :cond_1e
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 259
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 260
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 261
    .restart local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 262
    .local v3, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1e

    .line 263
    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    goto :goto_7

    .line 268
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v3    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "extras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;
    :cond_1f
    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v13, 0x3

    const/4 v6, 0x1

    .line 566
    if-eqz p1, :cond_9

    .line 567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 568
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 569
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->generateDisplayType()Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 570
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 571
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 572
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    if-eq v4, v13, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfc

    if-ne v4, v5, :cond_0

    .line 573
    :cond_2
    const-string/jumbo v4, "AUDIO"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 574
    .local v0, "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-static {v1, v2}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/audio/AudioMagician;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    .end local v0    # "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    :cond_3
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v4, v5, :cond_0

    .line 578
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    .line 579
    .local v3, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v3, :cond_0

    .line 580
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_4

    .line 581
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_4

    .line 582
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_4

    .line 583
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f5

    if-eq v4, v5, :cond_4

    .line 584
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f6

    if-ne v4, v5, :cond_5

    :cond_4
    move-object v4, v2

    .line 585
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-static {v2, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 586
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x76c

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v4, :cond_0

    .line 7187
    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v4, :cond_0

    .line 7190
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    .line 7191
    if-eqz v5, :cond_0

    .line 7192
    const/4 v4, 0x0

    .line 7193
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Ldwo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 7194
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 7195
    invoke-static {v2}, Ldwo;->e(Lcom/alibaba/wukong/im/Message;)I

    move-result v9

    .line 7196
    invoke-static {v2}, Ldwo;->d(Lcom/alibaba/wukong/im/Message;)I

    move-result v10

    .line 7197
    invoke-static {v2}, Ldwo;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v11

    .line 7198
    const/4 v12, 0x2

    if-eq v9, v12, :cond_6

    if-eq v9, v13, :cond_6

    const/4 v12, 0x4

    if-eq v9, v12, :cond_6

    if-eq v10, v6, :cond_6

    .line 7202
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 7204
    :cond_6
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v4, v6

    .line 7208
    :cond_7
    if-eqz v4, :cond_0

    if-eqz v8, :cond_0

    .line 7209
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7210
    invoke-static {v5, v8}, Ldwo;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto/16 :goto_0

    .line 7212
    :cond_8
    invoke-static {v5}, Ldwo;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 596
    .end local v3    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_9
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method
