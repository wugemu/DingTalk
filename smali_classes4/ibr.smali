.class public final Libr;
.super Ljava/lang/Object;
.source "MessageBuilderImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libr$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Libr;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p3, "isStreamFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    .local p2, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {}, Liaf;->c()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;ZJ)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;ZJ)Lcom/alibaba/wukong/im/Message;
    .locals 7
    .param p0, "content"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p2, "isStreamFile"    # Z
    .param p3, "createAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;ZJ)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 228
    .end local p3    # "createAt":J
    :cond_0
    :goto_0
    return-object v0

    .line 207
    .restart local p3    # "createAt":J
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 208
    .local v0, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    instance-of v4, p0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v4, :cond_3

    .line 209
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(I)V

    .line 210
    .local v1, "multiContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
    invoke-virtual {v1, p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->add(Lcom/alibaba/wukong/im/MessageContent;)V

    .line 211
    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 215
    .end local v1    # "multiContent":Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;
    :goto_1
    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 216
    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    iput-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 217
    invoke-static {}, Liaf;->b()J

    move-result-wide v2

    .line 218
    .local v2, "seqId":J
    neg-long v4, v2

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 219
    invoke-static {v2, v3}, Liaf;->a(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 220
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 221
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gtz v4, :cond_2

    invoke-static {}, Liaf;->c()J

    move-result-wide p3

    .end local p3    # "createAt":J
    :cond_2
    iput-wide p3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 222
    iget-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 224
    iput-object p1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    .line 225
    if-eqz p2, :cond_0

    .line 226
    new-instance v4, Libq;

    invoke-direct {v4, v0}, Libq;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    iput-object v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    goto :goto_0

    .line 213
    .end local v2    # "seqId":J
    .restart local p3    # "createAt":J
    :cond_3
    iput-object p0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    goto :goto_1
.end method

.method public static a()Lcom/alibaba/wukong/im/MessageBuilder;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Libr$a;->a:Libr;

    return-object v0
.end method

.method private static a(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .locals 3
    .param p0, "audioPath"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$AudioContent;"
        }
    .end annotation

    .prologue
    .line 139
    .local p3, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Audio url must not be empty for AudioMessage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$TextContent;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final appendAtOpenIdExList(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 332
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {p2}, Lidz;->a(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 335
    :cond_0
    return-object p1
.end method

.method public final appendAtOpenIdInfo(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 365
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    goto :goto_0
.end method

.method public final appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "templateId"    # I

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 268
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 269
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    goto :goto_0
.end method

.method public final appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 256
    .local p4, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 258
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 259
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-wide p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    .line 260
    invoke-static {p4}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public final appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "creatorType"    # Lcom/alibaba/wukong/im/Message$CreatorType;

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 301
    const/4 p1, 0x0

    .line 307
    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-object p1

    .line 302
    .restart local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 305
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 306
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-object p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    move-object p1, v0

    .line 307
    goto :goto_0
.end method

.method public final appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "info"    # Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 312
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, p1

    .line 327
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    .line 315
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 316
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget-wide v2, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->tag:J

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    .line 317
    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    invoke-static {v1}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 318
    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 319
    iget v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->priority:I

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPriority:I

    .line 320
    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->messageType:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->messageType:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 323
    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageSendInfo;->messageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v2, :cond_1

    .line 324
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    goto :goto_0
.end method

.method public final appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "xpnInfo"    # Lcom/alibaba/wukong/im/XPNInfo;

    .prologue
    .line 282
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, p1

    .line 287
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 285
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 286
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-object p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    goto :goto_0
.end method

.method public final appendLocalExtra(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "localExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v0, :cond_1

    .line 358
    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {p2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public final appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 340
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 348
    :goto_0
    return-object v0

    :cond_1
    move-object v1, p1

    .line 343
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->senderName:Ljava/lang/String;

    move-object v0, p1

    .line 344
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 348
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    goto :goto_0
.end method

.method public final buildAudioMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "audioPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Libr;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 8
    .param p1, "audioPath"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 127
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Libr;->buildAudioMessage(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildAudioMessage(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "audioPath"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 133
    .local p5, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1, p3, p4, p5}, Libr;->a(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    move-result-object v0

    .line 134
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildAudioMessage(Ljava/lang/String;Z)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p1, "audioPath"    # Ljava/lang/String;
    .param p2, "isStreamFile"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 121
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v1}, Libr;->a(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    move-result-object v0

    .line 122
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-direct {p0, v0, v1, p2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .locals 12
    .param p1, "videoLocalUrl"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Video local url must not be empty for CommonVideoContent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    return-object v0
.end method

.method public final buildCommonVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 14
    .param p1, "videoLocalUrl"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v3, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v13}, Libr;->buildCommonVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildCommonVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 13
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "videoAuthUrl"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "duration"    # J
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "picUrl"    # Ljava/lang/String;
    .param p12, "picAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Video local url must not be empty for CommonVideoMessage"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 411
    :cond_0
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    move-object v3, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 413
    .local v2, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;
    invoke-virtual {v2, p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->setAuthUrl(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->setPicAuthUrl(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v2}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    return-object v3
.end method

.method public final buildCustomMessage(ILjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 247
    .local p2, "messageContents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;>;"
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid contentType, must greater than 200"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    if-nez p2, :cond_1

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Message content must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .locals 8
    .param p1, "contentType"    # I
    .param p2, "type"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;"
        }
    .end annotation

    .prologue
    .line 234
    .local p6, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Libr;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    return-object v0
.end method

.method public final buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .locals 10
    .param p1, "contentType"    # I
    .param p2, "type"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;"
        }
    .end annotation

    .prologue
    .line 239
    .local p6, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p2, v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid contentType or customType, both must greater than 200"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;-><init>(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public final buildEncryptAudioMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 435
    .local p8, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Audio path must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    move-object v1, p1

    move-wide/from16 v2, p6

    move-object/from16 v4, p8

    move-object v5, p4

    move-wide v6, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;JLjava/lang/String;)V

    .line 439
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildEncryptCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    .locals 12
    .param p1, "videoLocalUrl"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Video local url must not be empty for CommonVideoContent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-object v1, p1

    move-object/from16 v2, p10

    move-wide/from16 v3, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p4

    move-wide v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public final buildEncryptCommonVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Video path must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    move-object v1, p1

    move-object/from16 v2, p10

    move-wide/from16 v3, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p4

    move-wide v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    .line 449
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildEncryptImageContent(Lcom/alibaba/wukong/im/MessageContent;IILjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .locals 14
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 484
    .local p4, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 485
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "EncryptImage MessageContent is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 487
    :cond_0
    const/4 v3, 0x0

    .line 488
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    instance-of v4, p1, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 489
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 491
    .local v2, "originContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    .end local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    const/4 v4, 0x0

    .line 492
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->picType()I

    move-result v5

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v10

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v13

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 493
    .restart local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 496
    .end local v2    # "originContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :cond_1
    return-object v3
.end method

.method public final buildEncryptImageMessage(IIIILjava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 14
    .param p1, "picType"    # I
    .param p2, "orientation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "thumbId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 590
    .local p6, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "f_size"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v10

    .line 591
    .local v10, "fileSize":J
    const-string/jumbo v2, "f_type"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 592
    .local v12, "fileType":Ljava/lang/String;
    const-string/jumbo v2, "f_name"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 594
    .local v9, "fileName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    const/4 v4, 0x0

    move v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p2

    move-object/from16 v13, p5

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    move-object/from16 v0, p6

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 597
    invoke-virtual {p0, v3}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    return-object v2
.end method

.method public final buildEncryptImageMessage(IIIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 7
    .param p1, "picType"    # I
    .param p2, "orientation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 585
    .local p5, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Libr;->buildEncryptImageMessage(IIIILjava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIII)Lcom/alibaba/wukong/im/Message;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "picType"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I

    .prologue
    .line 420
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Libr;->buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "picType"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "thumbId"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Picture path must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    move-object v2, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p4

    move-wide v8, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v1, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;
    invoke-virtual {p0, v1}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildEncryptMessage(ILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 27
    .param p1, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 554
    .local p2, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xcb

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcc

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xce

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 555
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "messageType invalidate"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_2
    const-string/jumbo v2, "f_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v10

    .line 559
    .local v10, "fileSize":J
    const-string/jumbo v2, "f_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 560
    .local v12, "fileType":Ljava/lang/String;
    const-string/jumbo v2, "f_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 561
    .local v9, "fileName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 580
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 563
    :pswitch_0
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 564
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 565
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto :goto_0

    .line 567
    .end local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :pswitch_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v8, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;JLjava/lang/String;)V

    .line 569
    .local v4, "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 570
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto :goto_0

    .line 572
    .end local v4    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    .end local v8    # "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    new-instance v14, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v9

    move-wide/from16 v22, v10

    move-object/from16 v24, v12

    invoke-direct/range {v14 .. v24}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    .line 573
    .local v14, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto :goto_0

    .line 576
    .end local v14    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    :pswitch_3
    new-instance v15, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    invoke-direct/range {v15 .. v26}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;JLjava/lang/String;)V

    .line 577
    .local v15, "videoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .line 578
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final buildEncryptMessage(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 545
    .local p2, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 546
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "message and encrypt content must be not null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_1
    invoke-virtual {p0, p1, p2}, Libr;->buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 549
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;
    .locals 19
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/MessageContent;"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "encryptContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_2

    .line 503
    :cond_0
    const/4 v3, 0x0

    .line 540
    :cond_1
    :goto_0
    return-object v3

    .line 506
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 540
    const/4 v3, 0x0

    goto :goto_0

    .line 508
    :pswitch_0
    const/4 v3, 0x0

    .line 509
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v5, :cond_1

    .line 510
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 511
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    .end local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    const/4 v4, 0x0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->picType()I

    move-result v5

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v7

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v10

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Ljava/lang/String;IIIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 512
    .restart local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setEncryptFileInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 516
    .end local v2    # "content":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :pswitch_1
    const/4 v4, 0x0

    .line 517
    .local v4, "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v5, :cond_3

    .line 518
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 519
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    new-instance v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    .end local v4    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    const/4 v5, 0x0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->duration()J

    move-result-wide v6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->fileName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->size()J

    move-result-wide v10

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->fileType()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;JLjava/lang/String;)V

    .line 520
    .restart local v4    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .end local v2    # "content":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    :cond_3
    move-object v3, v4

    .line 522
    goto :goto_0

    .line 524
    .end local v4    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    :pswitch_2
    const/4 v6, 0x0

    .line 525
    .local v6, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    if-eqz v5, :cond_4

    .line 526
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    .line 527
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    new-instance v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    .end local v6    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->duration()J

    move-result-wide v9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getWidth()I

    move-result v11

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getHeight()I

    move-result v12

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->size()J

    move-result-wide v14

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->fileType()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v6 .. v16}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JLjava/lang/String;)V

    .line 528
    .restart local v6    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .end local v2    # "content":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    :cond_4
    move-object v3, v6

    .line 530
    goto/16 :goto_0

    .line 532
    .end local v6    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    :pswitch_3
    const/4 v7, 0x0

    .line 533
    .local v7, "videoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;

    if-eqz v5, :cond_5

    .line 534
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;

    .line 535
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    new-instance v7, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    .end local v7    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->duration()J

    move-result-wide v10

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->getWidth()I

    move-result v12

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->getHeight()I

    move-result v13

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->bitrate()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->fileName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->size()J

    move-result-wide v16

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->fileType()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v7 .. v18}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;JLjava/lang/String;)V

    .line 536
    .restart local v7    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->setEncryptFileInfo(Ljava/util/Map;)V

    .end local v2    # "content":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    :cond_5
    move-object v3, v7

    .line 538
    goto/16 :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final buildEncryptVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)Lcom/alibaba/wukong/im/Message;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "picUrl"    # Ljava/lang/String;
    .param p11, "bitrate"    # I

    .prologue
    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Video path must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    move-object v2, p1

    move-object/from16 v3, p10

    move-wide/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p11

    move-object/from16 v9, p4

    move-wide/from16 v10, p2

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;JLjava/lang/String;)V

    .line 459
    .local v1, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;
    invoke-virtual {p0, v1}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildFileMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "File url must not be empty for FileMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildGeoMessage(Ljava/lang/String;DDLjava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 8
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "locationName"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Picture url must not be empty for GeoMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    .line 395
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildImageMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 7
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Libr;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildImageMessage(Ljava/lang/String;Ljava/lang/String;JI)Lcom/alibaba/wukong/im/Message;
    .locals 9
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "picSize"    # J
    .param p5, "picType"    # I

    .prologue
    .line 82
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Libr;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;
    .locals 9
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "picSize"    # J
    .param p5, "picType"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 87
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Libr;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildImageMessage(Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 9
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "picSize"    # J
    .param p5, "picType"    # I
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 93
    .local p7, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Libr;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 8
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "picSize"    # J
    .param p6, "picType"    # I
    .param p7, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 99
    .line 1106
    .local p8, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Pic url must not be empty for ImageMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1108
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    invoke-static {p1}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    :goto_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    invoke-static/range {p8 .. p8}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    move-object v1, p1

    move-wide v2, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;IILjava/util/Map;)V

    .line 100
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->setAuthUrl(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1

    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_1
    move-object v4, p3

    goto :goto_0
.end method

.method public final buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Libr;->buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    .line 1156
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Libr;->buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    .line 1173
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "btnOrientation"    # Ljava/lang/String;
    .param p5, "hideAvatar"    # Ljava/lang/String;
    .param p6, "singleTitle"    # Ljava/lang/String;
    .param p7, "singleBtnUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 621
    .local p4, "btnDesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;>;"
    .local p8, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Libr;->buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "btnOrientation"    # Ljava/lang/String;
    .param p5, "hideAvatar"    # Ljava/lang/String;
    .param p6, "singleTitle"    # Ljava/lang/String;
    .param p7, "singleBtnUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 626
    .local p4, "btnDesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;>;"
    .local p8, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p9, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Text must not be empty for MarkdownExMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;-><init>()V

    .line 629
    invoke-virtual {v1, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->text(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->title(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->btnOrientation(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->btnBtnDesList(Ljava/util/List;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    .line 630
    invoke-virtual {v1, p5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->hideAvatar(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->singleBtnTitle(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->singleBtnUrl(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->extension(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, p9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->authMediaMap(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->build()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;

    move-result-object v0

    .line 631
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p5, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    const/4 v4, 0x0

    .line 637
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 639
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v1}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Libr;->buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 607
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Libr;->buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 612
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Text must not be empty for MarkdownMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1643
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 615
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Libr;->buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildTextMessage(Ljava/lang/String;J)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "createAt"    # J

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {p1, v2, v2}, Libr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move-result-object v0

    .line 55
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    invoke-static {v0, v2, v1, p2, p3}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;ZJ)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    .local p3, "templateData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Libr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move-result-object v0

    .line 68
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Text must not be empty for TextMessage"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    invoke-static {p1, v2, v2}, Libr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move-result-object v0

    .line 62
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Libr;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    return-object v1
.end method

.method public final buildVideoMessage(Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 16
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "fileType"    # Ljava/lang/String;
    .param p10, "bitrate"    # J
    .param p12, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Libr;->buildVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final buildVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 15
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "videoAuthUrl"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "duration"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "fileType"    # Ljava/lang/String;
    .param p11, "bitrate"    # J
    .param p13, "picUrl"    # Ljava/lang/String;
    .param p14, "picAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Video url must not be empty for VideoMessage"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_0
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p10

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V

    .line 384
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->setAuthUrl(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p14

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->setPicAuthUrl(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, v2}, Libr;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    return-object v3
.end method

.method public final setMessageExcludeReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "excludeReceiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 195
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 196
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-object p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExcludeUids:Ljava/util/List;

    goto :goto_0
.end method

.method public final setMessageReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 185
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 186
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-object p2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mReceiverUids:Ljava/util/List;

    goto :goto_0
.end method
