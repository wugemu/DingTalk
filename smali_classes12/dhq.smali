.class public final Ldhq;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 346
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 347
    .local v1, "result":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 348
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static a(ILjava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .param p0, "subtype"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .param p3, "isAllUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 234
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "safe_im"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 235
    iput-object p2, v0, Lhzu;->b:Ljava/util/Map;

    .line 236
    iput p0, v0, Lhzu;->c:I

    .line 237
    iput-object p1, v0, Lhzu;->d:Ljava/lang/String;

    .line 238
    if-eqz p3, :cond_0

    .line 239
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->b(Lhzu;)V

    .line 243
    :goto_0
    const-string/jumbo v2, "crypto"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "crypto alarm : "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0    # "alarm":Lhzu;
    :goto_1
    return-void

    .line 241
    .restart local v0    # "alarm":Lhzu;
    :cond_0
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "alarm":Lhzu;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "alarmEx":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "type"    # I
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ldhq;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "type"    # I
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "isAllUser"    # Z

    .prologue
    .line 168
    invoke-static {p3}, Ldhq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v0, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v1, "code"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    if-eqz p0, :cond_0

    .line 175
    const-string/jumbo v1, "spaceId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v1, "creatorId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    const/16 v1, 0x5dd

    const-string/jumbo v2, "\u6d88\u606f\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0, p5}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 180
    .end local v0    # "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;)V
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p3, v1}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;Z)V
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "isAllUser"    # Z

    .prologue
    .line 80
    invoke-static {p2}, Ldhq;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "code"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0, v0}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/HashMap;)V

    .line 90
    const/16 v1, 0x5dd

    const-string/jumbo v2, "\u6d88\u606f\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0, p4}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;IZ)V
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "type"    # I
    .param p2, "isAllUser"    # Z

    .prologue
    const/4 v9, 0x0

    .line 116
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v6, v7, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 122
    .local v4, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    const-string/jumbo v6, "decrypt_code"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "errCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 123
    const/4 v6, -0x1

    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "code":I
    invoke-static {v0}, Ldhq;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    const-string/jumbo v6, "decrypt_reason"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "reason":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v1, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "type"

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v6, "code"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v6, "error"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p0, v1}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/HashMap;)V

    .line 136
    const/16 v6, 0x5de

    const-string/jumbo v7, "\u6d88\u606f\u89e3\u5bc6\u5931\u8d25"

    const/4 v8, 0x1

    invoke-static {v6, v7, v1, v8}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v3, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "decrypt_code"

    invoke-virtual {v3, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v6, "decrypt_reason"

    invoke-virtual {v3, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "markAlarm"    # Z

    .prologue
    .line 259
    if-nez p0, :cond_0

    .line 260
    const-string/jumbo v1, "crypto"

    const-string/jumbo v2, "decrypt message"

    const-string/jumbo v3, "markDecryptFailFlag message is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const-string/jumbo v1, "crypto"

    const-string/jumbo v2, "decrypt message"

    const-string/jumbo v3, "markDecryptFailFlag key loading."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "localExtras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 271
    const-string/jumbo v1, "decrypt_code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "decrypt_reason"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2
    const-string/jumbo v1, "decrypt_view_code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    .line 278
    const-string/jumbo v1, "crypto"

    const-string/jumbo v2, "markDecryptFailFlag message"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "messageId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 279
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; code:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "; reason:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/im/Message;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 95
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v1, "cid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-static {p0}, Ldkc;->x(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string/jumbo v1, "corpId"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    const-string/jumbo v1, "mid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v1, 0x5e0

    const-string/jumbo v2, "\u83b7\u53d6\u79d8\u94a5\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 332
    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 333
    invoke-virtual {v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 334
    invoke-virtual {v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 335
    invoke-virtual {v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/16 v0, -0x1f9

    if-eq p0, v0, :cond_0

    const/16 v0, -0x1fa

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "type"    # I
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v1, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ldhq;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 184
    return-void
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "type"    # I
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "isAllUser"    # Z

    .prologue
    .line 187
    invoke-static {p3}, Ldhq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v1, "code"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    if-eqz p0, :cond_0

    .line 194
    const-string/jumbo v1, "spaceId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "fileId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v1, "creatorId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    const/16 v1, 0x5de

    const-string/jumbo v2, "\u6d88\u606f\u89e3\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0, p5}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 200
    .end local v0    # "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static c(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 4
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "type"    # I
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "isAllUser"    # Z

    .prologue
    .line 214
    invoke-static {p3}, Ldhq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v1, "code"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    if-eqz p0, :cond_0

    .line 221
    const-string/jumbo v1, "spaceId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v1, "fileId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v1, "creatorId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    const/16 v1, 0x5e2

    const-string/jumbo v2, "\u52a0\u89e3\u5bc6\u8b66\u544a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 227
    .end local v0    # "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
