.class final Lddy$12;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 182
    iput-object p1, p0, Lddy$12;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 187
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 189
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1

    .line 191
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 1066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 192
    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 2066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 193
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 3066
    iget-object v1, v1, Lddy;->d:Lddx$b;

    .line 194
    invoke-interface {v1}, Lddx$b;->e()V

    .line 195
    iget-object v1, p0, Lddy$12;->a:Lddy;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    .line 4066
    iput-object v2, v1, Lddy;->h:Ljava/lang/String;

    .line 199
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_1
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 5066
    iget-object v1, v1, Lddy;->c:Ldqq;

    .line 199
    if-eqz v1, :cond_6

    .line 200
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 6066
    iget-object v1, v1, Lddy;->c:Ldqq;

    .line 200
    new-instance v3, Lddy$12$1;

    invoke-direct {v3, p0}, Lddy$12$1;-><init>(Lddy$12;)V

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "add"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ldqq;->a(Ljava/util/List;Ldqq$d;JLjava/lang/Object;)V

    .line 232
    iget-object v6, p0, Lddy$12;->a:Lddy;

    .line 7326
    iget-object v1, v6, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_5

    .line 7329
    const/4 v1, 0x0

    .line 7330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 7331
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x2bc

    if-ne v3, v4, :cond_8

    .line 7332
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    .line 7333
    if-eqz v8, :cond_8

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7334
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 7335
    if-nez v2, :cond_7

    .line 7336
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v2

    .line 7338
    :goto_1
    const-wide/16 v4, 0x0

    .line 7339
    const-string/jumbo v2, "announceUnread"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7341
    :try_start_0
    const-string/jumbo v2, "announceUnreadCreateTime"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 7345
    :cond_2
    :goto_2
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v10

    cmp-long v2, v10, v4

    if-lez v2, :cond_3

    .line 7346
    const-string/jumbo v2, "announceUnread"

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7347
    const-string/jumbo v2, "announceUnreadCreateTime"

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7349
    :cond_3
    invoke-interface {v8, v3}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 7350
    const/4 v2, 0x1

    move v1, v2

    :goto_3
    move v2, v1

    .line 7353
    goto :goto_0

    .line 7354
    :cond_4
    if-eqz v2, :cond_5

    .line 7355
    iget-object v1, v6, Lddy;->d:Lddx$b;

    invoke-interface {v1}, Lddx$b;->g()V

    .line 233
    :cond_5
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 8066
    iget-object v1, v1, Lddy;->d:Lddx$b;

    .line 233
    invoke-interface {v1, p1, p2}, Lddx$b;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 235
    :cond_6
    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_7
    move-object v3, v2

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 249
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 250
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 12066
    iget-object v1, v1, Lddy;->h:Ljava/lang/String;

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 13066
    iget-object v1, v1, Lddy;->h:Ljava/lang/String;

    .line 250
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 14066
    iput-object v6, v1, Lddy;->h:Ljava/lang/String;

    .line 253
    invoke-static {}, Lder;->a()Lder;

    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 15066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 253
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lder;->b(Lcom/alibaba/wukong/im/Conversation;J)V

    .line 258
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_0
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 16066
    iget-object v1, v1, Lddy;->c:Ldqq;

    .line 258
    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 17066
    iget-object v1, v1, Lddy;->c:Ldqq;

    .line 259
    const-string/jumbo v2, "change"

    invoke-virtual {v1, p1, v6, v2}, Ldqq;->b(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    .line 261
    :cond_1
    iget-object v1, p0, Lddy$12;->a:Lddy;

    .line 18066
    iget-object v1, v1, Lddy;->d:Lddx$b;

    .line 261
    invoke-interface {v1, p1}, Lddx$b;->b(Ljava/util/List;)V

    .line 262
    iget-object v1, p0, Lddy$12;->a:Lddy;

    invoke-static {v1}, Lddy;->a(Lddy;)V

    .line 265
    if-eqz p1, :cond_4

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 267
    .restart local v0    # "m":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 268
    :cond_3
    iget-object v2, p0, Lddy$12;->a:Lddy;

    .line 19066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 268
    invoke-interface {v2, v0, v4}, Lddx$b;->a(Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_0

    .line 272
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_4
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lddy$12;->a:Lddy;

    .line 9066
    iget-object v0, v0, Lddy;->c:Ldqq;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lddy$12;->a:Lddy;

    .line 10066
    iget-object v0, v0, Lddy;->c:Ldqq;

    .line 240
    const/4 v1, 0x0

    const-string/jumbo v2, "remove"

    invoke-virtual {v0, p1, v1, v2}, Ldqq;->a(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lddy$12;->a:Lddy;

    .line 11066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 242
    invoke-interface {v0, p1}, Lddx$b;->a(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lddy$12;->a:Lddy;

    invoke-static {v0}, Lddy;->a(Lddy;)V

    .line 244
    return-void
.end method
