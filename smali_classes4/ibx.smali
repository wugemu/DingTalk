.class public final Libx;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libx$a;,
        Libx$d;,
        Libx$b;,
        Libx$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    .line 264
    .local v1, "mediaContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;
    iget-object v0, v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lieb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 266
    .local v5, "_size":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "cid":Ljava/lang/String;
    new-instance v6, Lifu;

    invoke-direct {v6}, Lifu;-><init>()V

    .line 268
    .local v6, "uploadController":Lifu;
    iput-object v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUploadController:Lifu;

    .line 269
    iget-object v7, v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mUrl:Ljava/lang/String;

    new-instance v0, Libx$3;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Libx$3;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v7, p0, v6, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lifu;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 327
    .end local v2    # "cid":Ljava/lang/String;
    .end local v5    # "_size":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6    # "uploadController":Lifu;
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    .locals 16
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "nameAppender"    # Lcom/alibaba/wukong/im/SendNameAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/im/SendNameAppender;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const-string/jumbo v3, "[TAG] MsgSender"

    const-string/jumbo v4, "start uploadStream"

    .line 3018
    const-string/jumbo v9, "im"

    invoke-static {v3, v4, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    .line 94
    .local v7, "controller":Libq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v3, v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    .line 97
    .local v6, "mediaContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
    iget-object v3, v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lieb;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "cid":Ljava/lang/String;
    const-string/jumbo v3, "Upload"

    invoke-static {v3}, Lhzs;->a(Ljava/lang/String;)Lhzs$a;

    move-result-object v5

    .line 3155
    .local v5, "statistics":Lhzs$a;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v5, Lhzs$a;->a:J

    .line 102
    new-instance v2, Libx$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Libx$1;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Lhzs$a;Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;Libq;Ljava/lang/String;Lcom/alibaba/wukong/im/SendNameAppender;)V

    .line 175
    .local v2, "observer":Lifv;, "Lifv<Lifx;>;"
    new-instance v11, Lifu;

    invoke-direct {v11}, Lifu;-><init>()V

    .line 4031
    .local v11, "uploadController":Lifu;
    iput-object v11, v7, Libq;->a:Lifu;

    .line 177
    new-instance v10, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v10}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 178
    .local v10, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iget-object v3, v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    .line 4058
    iput-object v3, v10, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 4066
    iput-object v8, v10, Lcom/alibaba/wukong/upload/UploadParams;->b:Ljava/lang/String;

    .line 180
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->type()I

    move-result v3

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_1

    .line 181
    :cond_0
    const/4 v3, 0x1

    .line 4090
    iput-boolean v3, v10, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 183
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->tag()J

    move-result-wide v12

    const-wide/16 v14, 0x10

    cmp-long v3, v12, v14

    if-nez v3, :cond_2

    .line 184
    sget-object v3, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v10, v3}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 186
    :cond_2
    invoke-static {}, Lify;->a()Lify;

    .line 4248
    const/4 v4, 0x0

    .line 4250
    :try_start_0
    const-string/jumbo v3, "[TAG] UploadService"

    const-string/jumbo v9, "base"

    invoke-static {v3, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 4252
    if-nez v2, :cond_4

    .line 4273
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 219
    .end local v2    # "observer":Lifv;, "Lifv<Lifx;>;"
    .end local v5    # "statistics":Lhzs$a;
    .end local v6    # "mediaContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
    .end local v8    # "cid":Ljava/lang/String;
    .end local v10    # "params":Lcom/alibaba/wukong/upload/UploadParams;
    .end local v11    # "uploadController":Lifu;
    :cond_3
    :goto_0
    return-void

    .line 4255
    .restart local v2    # "observer":Lifv;, "Lifv<Lifx;>;"
    .restart local v5    # "statistics":Lhzs$a;
    .restart local v6    # "mediaContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
    .restart local v8    # "cid":Ljava/lang/String;
    .restart local v10    # "params":Lcom/alibaba/wukong/upload/UploadParams;
    .restart local v11    # "uploadController":Lifu;
    :cond_4
    if-eqz v10, :cond_5

    .line 5054
    :try_start_1
    iget-object v3, v10, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 4255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4256
    :cond_5
    const-string/jumbo v3, "[Upload] params or path is null"

    invoke-virtual {v4, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 4257
    sget-object v3, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v3}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v3

    sget-object v9, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v9}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Lifv;->onException(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4273
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 4260
    :cond_6
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 6054
    iget-object v9, v10, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 4260
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4261
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4262
    :cond_7
    const-string/jumbo v3, "[Upload] file is invalid"

    invoke-virtual {v4, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 4263
    sget-object v3, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v3}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v3

    sget-object v9, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v9}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Lifv;->onException(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4273
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 4266
    :cond_8
    :try_start_3
    invoke-static {v10}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;)Lcom/laiwang/protocol/upload/UploaderExtra;

    move-result-object v9

    .line 4267
    new-instance v12, Lcom/alibaba/wukong/auth/bh;

    invoke-direct {v12, v9}, Lcom/alibaba/wukong/auth/bh;-><init>(Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 4268
    invoke-virtual {v12, v2}, Lcom/alibaba/wukong/auth/bh;->a(Lifv;)V

    .line 4269
    invoke-virtual {v12, v11}, Lcom/alibaba/wukong/auth/bh;->a(Lifu;)V

    .line 4270
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[Upload] createTask, file:"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, " len:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 4271
    invoke-virtual {v12}, Lcom/alibaba/wukong/auth/bh;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4273
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    throw v3

    .line 188
    .end local v2    # "observer":Lifv;, "Lifv<Lifx;>;"
    .end local v5    # "statistics":Lhzs$a;
    .end local v8    # "cid":Ljava/lang/String;
    .end local v10    # "params":Lcom/alibaba/wukong/upload/UploadParams;
    .end local v11    # "uploadController":Lifu;
    :cond_9
    if-eqz p1, :cond_a

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    new-instance v4, Libx$2;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v4, v7, v0, v1}, Libx$2;-><init>(Libq;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/message/MessageImpl;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/alibaba/wukong/im/SendNameAppender;->getSendName(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 215
    :cond_a
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 40
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v0, :cond_1

    .line 41
    if-eqz p2, :cond_0

    .line 42
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR messageContent is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v0, "[TAG] MsgSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start upload type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v0, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    if-eqz v0, :cond_8

    .line 1222
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    .line 1224
    iget-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->type()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_b

    .line 1226
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    .line 1227
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->picUrl()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1229
    :goto_1
    invoke-static {v2}, Lieb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    if-eqz p1, :cond_2

    .line 1231
    new-instance v0, Libx$b;

    invoke-direct {v0, p0, p2, v6}, Libx$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Z)V

    invoke-static {v2, p0, p1, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0

    .line 1233
    :cond_2
    new-instance v0, Libx$c;

    invoke-direct {v0, p0, p2}, Libx$c;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-static {v2, p0, v5, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lifu;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto :goto_0

    .line 1236
    :cond_3
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v0, :cond_7

    .line 1237
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 1238
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "is_3rd_emotion"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1240
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "3rd_emotion_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1241
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "3rd_emotion_thumb"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1242
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 1246
    :cond_4
    if-eqz p1, :cond_5

    .line 1247
    new-instance v0, Libx$b;

    invoke-direct {v0, p0, p2, v6}, Libx$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Z)V

    invoke-static {v1, p0, p1, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto/16 :goto_0

    .line 1249
    :cond_5
    new-instance v0, Libx$c;

    invoke-direct {v0, p0, p2}, Libx$c;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-static {v1, p0, v5, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lifu;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto/16 :goto_0

    .line 1253
    :cond_6
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 1257
    :cond_7
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v0, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    if-eqz v0, :cond_a

    .line 2081
    if-nez p1, :cond_9

    .line 2083
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 2086
    :cond_9
    new-instance v0, Libx$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Libx$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Z)V

    invoke-static {v5, p0, p1, v0}, Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    goto/16 :goto_0

    .line 51
    :cond_a
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    :cond_b
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "uploader"    # Lcom/alibaba/wukong/im/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/im/Uploader;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    new-instance v0, Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;-><init>()V

    .line 400
    .local v0, "params":Lcom/alibaba/wukong/im/Uploader$UploadParams;
    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->setFilePath(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 402
    invoke-interface {p2, v0, p3}, Lcom/alibaba/wukong/im/Uploader;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 403
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lifu;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "controller"    # Lifu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lifu;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lifx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lifx;>;"
    const/4 v8, 0x1

    .line 337
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "cid":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v2}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 6066
    .local v2, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iput-object v0, v2, Lcom/alibaba/wukong/upload/UploadParams;->b:Ljava/lang/String;

    .line 7058
    iput-object p0, v2, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 341
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 7074
    iput-boolean v8, v2, Lcom/alibaba/wukong/upload/UploadParams;->c:Z

    .line 346
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 348
    .local v1, "contentType":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/16 v4, 0xfb

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/16 v4, 0xfc

    if-eq v1, v4, :cond_0

    const/16 v4, 0x67

    if-eq v1, v4, :cond_0

    const/16 v4, 0xfd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xca

    if-eq v1, v4, :cond_0

    const/16 v4, 0xfe

    if-ne v1, v4, :cond_1

    .line 8090
    :cond_0
    iput-boolean v8, v2, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 354
    :cond_1
    iget-object v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 355
    sget-object v4, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v2, v4}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 357
    :cond_2
    new-instance v3, Libx$4;

    invoke-direct {v3, p3}, Libx$4;-><init>(Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 391
    .local v3, "uplistener":Lifv;, "Lifv<Lifx;>;"
    invoke-static {}, Lify;->a()Lify;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p2}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    .line 392
    return-void

    .line 344
    .end local v1    # "contentType":I
    .end local v3    # "uplistener":Lifv;, "Lifv<Lifx;>;"
    :cond_3
    const/4 v4, 0x0

    .line 8074
    iput-boolean v4, v2, Lcom/alibaba/wukong/upload/UploadParams;->c:Z

    goto :goto_0
.end method
