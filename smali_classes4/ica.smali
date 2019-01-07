.class public final Lica;
.super Ljava/lang/Object;
.source "MessageServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lica$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lica;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/wukong/im/MessageService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lica$a;->a:Lica;

    return-object v0
.end method


# virtual methods
.method public final addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/MessageChangeListener;

    .prologue
    .line 64
    invoke-static {p1}, Libv;->a(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 65
    return-void
.end method

.method public final addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/MessageListener;

    .prologue
    .line 54
    invoke-static {p1}, Libv;->a(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 55
    return-void
.end method

.method public final clearMemoryCache()V
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {}, Libs;->a()V

    .line 344
    return-void
.end method

.method public final combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p2, "toConversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "senderNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lica;->combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 281
    return-void
.end method

.method public final combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p2, "toConversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "senderNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "contentModels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/ContentModel;>;"
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR messages is empty"

    invoke-static {p5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR toConversationId is empty"

    invoke-static {p5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-static {p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Lica$5;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lica$5;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 332
    invoke-virtual {v0}, Lica$5;->start()V

    goto :goto_0
.end method

.method public final forwardMessages(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    if-nez p1, :cond_1

    .line 166
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "cid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    :cond_2
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversation is invalid"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 175
    :cond_4
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR messages is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_5
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lica$3;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p3}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lica$3;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lica$3;->start()V

    goto :goto_0
.end method

.method public final forwardWithTransformBatch(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p2, "toConversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR messages is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR toConversationId is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Lica$4;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p3}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lica$4;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lica$4;->start()V

    goto :goto_0
.end method

.method public final listAtMeMessages(JILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "cursor"    # J
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-gtz p3, :cond_2

    .line 395
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cursor or count is invalid"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    new-instance v1, Lica$7;

    new-instance v3, Liaf$a;

    invoke-direct {v3, p4}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lica$7;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JI)V

    .line 408
    invoke-virtual {v1}, Lica$7;->start()V

    goto :goto_0
.end method

.method public final listMessageByIds(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 413
    .local p1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR msgIds is null or empty"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    new-instance v0, Lica$8;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p2}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lica$8;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;)V

    .line 428
    invoke-virtual {v0}, Lica$8;->start()V

    goto :goto_0
.end method

.method public final parseMessageContent(ILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent;
    .locals 1
    .param p1, "contentType"    # I
    .param p2, "contentJsonString"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p1, p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->fromString(ILjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public final querySecretMsgReadStatus(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 348
    .local p1, "queryObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    .line 10784
    invoke-static {p1}, Lcom/alibaba/wukong/im/QuerySecretMsgReadStatusObject;->toModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 10785
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10786
    :cond_0
    if-eqz p2, :cond_1

    .line 10787
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid messageId"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 10789
    :cond_1
    :goto_0
    return-void

    .line 10792
    :cond_2
    new-instance v2, Libz$10;

    invoke-direct {v2, v0, p2}, Libz$10;-><init>(Libz;Lcom/alibaba/wukong/Callback;)V

    .line 10798
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;->querySecretMsgReadStatus(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final varargs removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 130
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgServ"

    .line 6014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversationId is invalid"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    array-length v0, p3

    if-nez v0, :cond_2

    .line 136
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid messageIds"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 140
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] RmLocalMsgs start -> cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 8030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 143
    :cond_3
    :try_start_3
    new-instance v0, Lica$2;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lica$2;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;[Ljava/lang/Long;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 151
    invoke-virtual {v0}, Lica$2;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 10030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 153
    throw v0
.end method

.method public final removeMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/MessageChangeListener;

    .prologue
    .line 69
    invoke-static {p1}, Libv;->b(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 70
    return-void
.end method

.method public final removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/MessageListener;

    .prologue
    .line 59
    invoke-static {p1}, Libv;->b(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 60
    return-void
.end method

.method public final varargs removeMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V
    .locals 9
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageIds"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 76
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgServ"

    .line 1014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] RmMsgs, cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "[API] Param conv null"

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR conversationId is invalid"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 123
    :goto_0
    return-void

    .line 83
    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    array-length v0, p3

    if-nez v0, :cond_2

    .line 84
    :cond_1
    const-string/jumbo v0, "[API] Param msgIds null"

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid messageIds"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 90
    :cond_2
    :try_start_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 3030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 91
    :cond_3
    :try_start_3
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, "allMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] MsgIds sz="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lica$1;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lica$1;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;[Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

    .line 120
    invoke-virtual {v0}, Lica$1;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 122
    .end local v7    # "allMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    .line 5030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 122
    throw v0
.end method

.method public final setMessageEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/alibaba/wukong/im/EncryptHelper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    invoke-static {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->setEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V

    .line 339
    return-void
.end method

.method public final setMessageProxy(Lcom/alibaba/wukong/im/MessageProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/alibaba/wukong/im/MessageProxy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    invoke-static {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->setProxy(Lcom/alibaba/wukong/im/MessageProxy;)V

    .line 161
    return-void
.end method

.method public final updateMsgAllRead(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 356
    .local p2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cid is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 360
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    :cond_1
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR messageList is empty"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v5, "copiedMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v0, Lica$6;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lica$6;-><init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Lica$6;->start()V

    goto :goto_0
.end method
