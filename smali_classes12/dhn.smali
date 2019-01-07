.class public Ldhn;
.super Ljava/lang/Object;
.source "EncryptHelperImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/EncryptHelper;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ldhn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldhn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/alibaba/wukong/im/Message;)I
    .locals 16
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {}, Ldho;->b()Z

    move-result v10

    if-nez v10, :cond_1

    .line 58
    const-string/jumbo v10, "crypto"

    sget-object v11, Ldhn;->a:Ljava/lang/String;

    const-string/jumbo v12, "helper decrypt no .so"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v7, 0x3

    .line 114
    :cond_0
    :goto_0
    return v7

    .line 62
    :cond_1
    const/4 v7, 0x3

    .line 64
    .local v7, "ret":I
    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ldho;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v11, "crypto"

    sget-object v12, Ldhn;->a:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v14, "decrypt messageId:"

    aput-object v14, v13, v10

    const/4 v10, 0x1

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x2

    const-string/jumbo v14, "; value:"

    aput-object v14, v13, v10

    const/4 v14, 0x3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    invoke-static {v11, v12, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 75
    .local v4, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    const-string/jumbo v10, "decrypt_view_code"

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 76
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    .line 80
    .local v5, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 99
    :goto_2
    const-string/jumbo v10, "crypto"

    sget-object v11, Ldhn;->a:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "decrypt messageId:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "; decrypt success."

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 103
    .end local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual {v3}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v10

    invoke-static {v10}, Ldhq;->a(I)Z

    move-result v6

    .line 105
    .local v6, "needAlarm":Z
    invoke-virtual {v3}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v6}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 69
    .end local v3    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    .end local v6    # "needAlarm":Z
    .restart local v9    # "value":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 82
    .restart local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :pswitch_0
    :try_start_1
    move-object v0, v5

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move-object v8, v0

    .line 84
    .local v8, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    move-object/from16 v0, p1

    instance-of v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v10, :cond_4

    .line 88
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "currentText":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 90
    move-object/from16 v0, p1

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object v10, v0

    const-string/jumbo v11, "key_encrypt_text"

    invoke-virtual {v10, v11, v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->putMemoryCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v2    # "currentText":Ljava/lang/String;
    :cond_4
    invoke-interface {v8, v9}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->setText(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    const/4 v7, 0x1

    goto :goto_2

    .line 106
    .end local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v8    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 107
    .local v3, "e":Lcom/dingtalk/cryptokit/CryptoException;
    invoke-virtual {v3}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v10

    invoke-static {v10}, Ldhq;->a(I)Z

    move-result v6

    .line 108
    .restart local v6    # "needAlarm":Z
    invoke-virtual {v3}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/dingtalk/cryptokit/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v6}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 109
    .end local v3    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    .end local v6    # "needAlarm":Z
    :catch_2
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "-1"

    invoke-static {v3}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public encrypt(Lcom/alibaba/wukong/im/Message;)I
    .locals 15
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v14, 0x2

    const/4 v6, 0x1

    .line 31
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {}, Ldho;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const-string/jumbo v3, "crypto"

    sget-object v4, Ldhn;->a:Ljava/lang/String;

    const-string/jumbo v6, "helper encrypt no .so"

    invoke-static {v3, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 49
    :goto_0
    return v3

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Ldho;->a()Ldho;

    .line 2060
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v3, v4, :cond_2

    .line 2061
    :cond_1
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v4, -0x1f9

    const-string/jumbo v7, "message_type false"

    invoke-direct {v3, v4, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual {v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v3, v4, v6}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;Z)V

    .end local v2    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :goto_1
    move v3, v5

    .line 49
    goto :goto_0

    .line 2064
    :cond_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldjl;->s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v7

    .line 2065
    if-nez v7, :cond_3

    .line 2066
    const-string/jumbo v3, "crypto"

    sget-object v4, Ldho;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "tryToEncryptMsg getCorpIdFromMessage failed. orgId="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 2068
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-static {v9}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2067
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2066
    invoke-static {v3, v4, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v4, -0x1fa

    const-string/jumbo v7, "corpId null"

    invoke-direct {v3, v4, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 43
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e":Lcom/dingtalk/cryptokit/CryptoException;
    invoke-virtual {v2}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/dingtalk/cryptokit/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v14, v3, v4}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;)V

    goto :goto_1

    .line 2072
    .end local v2    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    :cond_3
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldho;->d(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v8

    .line 2073
    if-nez v8, :cond_4

    .line 2074
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v4, -0x1f8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "appId null"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    :catch_2
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, -0x1

    invoke-static {v2}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v14, v3, v4}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IILjava/lang/String;)V

    goto :goto_1

    .line 2079
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    .line 2080
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2112
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v4, -0x1f9

    const-string/jumbo v7, "message_type false"

    invoke-direct {v3, v4, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2082
    :pswitch_0
    move-object v0, v4

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move-object v3, v0

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v3

    .line 2083
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-static {v9}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v10

    .line 2084
    invoke-static {v10, v11}, Ldho;->b(J)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-result-object v9

    .line 2086
    invoke-static {v8, v7, v3, v9}, Ldho;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;)Ljava/lang/String;

    move-result-object v3

    .line 2087
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v4, v3}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->setText(Ljava/lang/String;)V

    .line 2089
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2090
    const-class v3, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v12

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v12, v13, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 2100
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "oid"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "safety_app_id"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "safety_priority"

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    new-instance v4, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 2104
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v14, :cond_6

    .line 2105
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 2109
    :goto_2
    const-class v3, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;

    move v3, v6

    .line 39
    goto/16 :goto_0

    .line 2107
    :cond_6
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;
    :try_end_3
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 2080
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
