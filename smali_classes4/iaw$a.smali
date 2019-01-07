.class public final Liaw$a;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Liaw$a;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 12
    .param p0, "x0"    # Liaw$a;
    .param p1, "x1"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 1188
    .line 5231
    if-eqz p1, :cond_7

    .line 5234
    const-string/jumbo v1, "[SYNC] ConvServ"

    .line 6014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 5236
    :try_start_0
    const-string/jumbo v1, "[SYNC] listConv succ in tooLong2"

    invoke-virtual {v4, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 5237
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5239
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    .line 6477
    invoke-virtual {v1}, Liar;->a()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 5239
    :goto_0
    if-lez v1, :cond_4

    move v3, v0

    .line 5241
    :goto_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    .line 7099
    invoke-static {}, Libu;->a()Ljava/util/HashSet;

    move-result-object v5

    .line 5243
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5244
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 5245
    if-eqz v0, :cond_0

    .line 5248
    const/4 v1, 0x0

    .line 5249
    if-nez v3, :cond_a

    .line 5250
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    move-object v2, v1

    .line 5252
    :goto_3
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 5253
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v1}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    if-eqz v2, :cond_1

    iget-wide v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    iget-wide v10, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    .line 5255
    :cond_1
    iget-wide v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    sget-wide v10, Lcom/alibaba/wukong/im/IMConstants;->YEAR_2000_MILLS:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    .line 5256
    iget-wide v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    iput-wide v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 5259
    :cond_2
    if-eqz v2, :cond_5

    .line 5260
    iget-object v1, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 5261
    iget v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    iget v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    or-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    .line 5262
    invoke-static {v2, v0, v6}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5288
    :catchall_0
    move-exception v0

    .line 11030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 5288
    throw v0

    .line 6479
    :cond_3
    :try_start_1
    sget-object v1, Liar;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto/16 :goto_0

    .line 5239
    :cond_4
    const/4 v0, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 5264
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5265
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5266
    invoke-static {v0, v6}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 5272
    :cond_6
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, p2}, Liar;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5273
    const-string/jumbo v0, "conversation_loaded"

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-static {v0, v1, v2}, Liah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 5274
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    invoke-virtual {v0, v6}, Libs;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5275
    const-string/jumbo v0, "save msg fail"

    invoke-virtual {p1, v0}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    .line 5276
    const-string/jumbo v0, "[SYNC] ack fail, save msgs fail"

    invoke-virtual {v4, v0}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 5289
    :cond_7
    :goto_4
    return-void

    .line 5280
    :cond_8
    :try_start_2
    const-string/jumbo v0, "refresh conversation fail"

    invoke-virtual {p1, v0}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    .line 5281
    const-string/jumbo v0, "[SYNC] ack fail, refresh conv fail"

    invoke-virtual {v4, v0}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_4

    .line 5285
    :cond_9
    :try_start_3
    const-string/jumbo v0, "[SYNC] ack success"

    invoke-virtual {v4, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 5286
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_4

    :cond_a
    move-object v2, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1192
    const-string/jumbo v2, "sy"

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->getVersion(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 1193
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-static {}, Lido;->a()Lido;

    .line 3204
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v2

    const-string/jumbo v3, "SYNC_TOOLONG2_TIME"

    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Liga;->a(Ljava/lang/String;J)V

    .line 3205
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v2

    const-string/jumbo v3, "SYNC_LOG_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Liga;->a(Ljava/lang/String;I)V

    .line 1198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Liaw;->b()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1199
    .local v0, "interval":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1200
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 1201
    const-string/jumbo v2, "[SYNC] ConvServ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] ack succ, clean install, interval:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4208
    :cond_2
    if-eqz p1, :cond_0

    .line 4211
    const-string/jumbo v2, "[SYNC] ConvServ"

    const-string/jumbo v3, "[SYNC] listConv in tooLong2"

    .line 5018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v2

    const/16 v3, 0xbb8

    new-instance v4, Liaw$a$1;

    invoke-direct {v4, p0, p1}, Liaw$a$1;-><init>(Liaw$a;Lcom/alibaba/wukong/sync/SyncAck;)V

    invoke-virtual {v2, v3, v4}, Liav;->a(ILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
