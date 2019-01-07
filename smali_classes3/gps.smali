.class public final Lgps;
.super Ljava/lang/Object;
.source "ConversationSpaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgps$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(ZI)Lgps$a;
    .locals 2
    .param p0, "isEncrypt"    # Z
    .param p1, "messageContentType"    # I

    .prologue
    const/4 v1, 0x2

    .line 238
    new-instance v0, Lgps$a;

    invoke-direct {v0, p0, p1}, Lgps$a;-><init>(ZI)V

    .line 239
    .local v0, "infoHolder":Lgps$a;
    if-eqz p0, :cond_0

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 6060
    iput v1, v0, Lgps$a;->c:I

    .line 253
    const-string/jumbo v1, "newCSpaceIdIM"

    .line 6068
    iput-object v1, v0, Lgps$a;->d:Ljava/lang/String;

    .line 260
    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const/4 v1, 0x0

    .line 4060
    iput v1, v0, Lgps$a;->c:I

    .line 245
    const-string/jumbo v1, "convSpaceNormal"

    .line 4068
    iput-object v1, v0, Lgps$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 248
    :pswitch_1
    const/4 v1, 0x1

    .line 5060
    iput v1, v0, Lgps$a;->c:I

    .line 249
    const-string/jumbo v1, "convSpaceHidden"

    .line 5068
    iput-object v1, v0, Lgps$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 7060
    :cond_0
    iput v1, v0, Lgps$a;->c:I

    .line 258
    const-string/jumbo v1, "newCSpaceIdIM"

    .line 7068
    iput-object v1, v0, Lgps$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string/jumbo v0, "getSpaceIdFromConversation(Conversation)"

    const-string/jumbo v1, "null conversation"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lgps;->a(Ljava/util/Map;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lgiy;)Ljava/lang/String;
    .locals 2
    .param p0, "dpOrgConversationModel"    # Lgiy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const-string/jumbo v0, "getSpaceIdFromConversation(DpOrgConversationModel)"

    const-string/jumbo v1, "null conversation"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgiy;->f:Ljava/util/Map;

    invoke-static {v0}, Lgps;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lgps$a;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "infoHolder"    # Lgps$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgps$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    :cond_0
    const-string/jumbo v1, "getSpaceIdFromConversationImpl(SpaceInfoHolder, ...)"

    const-string/jumbo v2, "null or empty conversationExtension"

    invoke-static {v1, v2}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    :goto_0
    return-object v0

    .line 290
    :cond_2
    if-eqz p0, :cond_3

    .line 8064
    iget-object v1, p0, Lgps$a;->d:Ljava/lang/String;

    .line 290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    :cond_3
    const-string/jumbo v1, "getSpaceIdFromConversationImpl"

    const-string/jumbo v2, "null spaceInfoHolder or empty spaceIdKey"

    invoke-static {v1, p0, v2, v0}, Lgps;->a(Ljava/lang/String;Lgps$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9064
    :cond_4
    iget-object v1, p0, Lgps$a;->d:Ljava/lang/String;

    .line 294
    const-string/jumbo v2, "newCSpaceIdIM"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    const-string/jumbo v1, "newCSpaceIdIM"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, "spaceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const-string/jumbo v1, "cSpaceId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "spaceId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "spaceId":Ljava/lang/String;
    goto :goto_0

    .line 10064
    .end local v0    # "spaceId":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lgps$a;->d:Ljava/lang/String;

    .line 301
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    const-string/jumbo v0, "getSpaceIdFromConversationImpl(Map<String, String>)"

    const-string/jumbo v1, "null or empty conversationExtension"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-static {}, Lgps;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string/jumbo v0, "cSpaceId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Lgps;->a(Ljava/util/Map;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;ZI)Ljava/lang/String;
    .locals 3
    .param p1, "isEncrypt"    # Z
    .param p2, "messageContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    const-string/jumbo v1, "getSpaceIdFromConversationImpl(Map<String, String>, ...)"

    const-string/jumbo v2, "null or empty conversationExtension"

    invoke-static {v1, v2}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    .line 281
    :goto_0
    return-object v1

    .line 280
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lgps;->a(ZI)Lgps$a;

    move-result-object v0

    .line 281
    .local v0, "infoHolder":Lgps$a;
    invoke-static {v0, p0}, Lgps;->a(Lgps$a;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Lcem;Lcma;)V
    .locals 4
    .param p0, "orgConversationModel"    # Lcem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcem;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lgps;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0, p1}, Lgpt;->a(Lcem;Lcma;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-eqz p1, :cond_0

    .line 113
    if-nez p0, :cond_2

    .line 114
    const-string/jumbo v0, "checkConversationSpaceId(OrgConversationModel, ...)"

    const-string/jumbo v1, "null conversation"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "2012"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1, p1}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcem;->a:Ljava/lang/String;

    iget-object v1, p0, Lcem;->c:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-static {v0, v1, v2, v3, p1}, Lgps;->a(Ljava/lang/String;Ljava/util/Map;ZILcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1, p1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    .line 76
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "isEncrypt"    # Z
    .param p2, "messageContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "ZI",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lgps;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1364
    if-eqz p3, :cond_0

    .line 1368
    if-nez p0, :cond_1

    .line 1369
    const-string/jumbo v0, "10600"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1, p3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    if-eqz p1, :cond_2

    .line 1374
    invoke-static {p0, p2, p3}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    goto :goto_0

    .line 1376
    :cond_2
    invoke-static {p0}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1377
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    .line 1378
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcem;->a:Ljava/lang/String;

    .line 1379
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcem;->c:Ljava/util/Map;

    .line 1380
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcem;->b:Ljava/lang/String;

    .line 1381
    invoke-static {v0, p3}, Lgpt;->a(Lcem;Lcma;)V

    goto :goto_0

    .line 1384
    :cond_3
    invoke-static {p0, p3}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 87
    :cond_4
    if-eqz p3, :cond_0

    .line 90
    if-nez p0, :cond_5

    .line 91
    const-string/jumbo v0, "checkConversationSpaceId(Conversation, ...)"

    const-string/jumbo v1, "null conversation"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "2012"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1, p3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 95
    :cond_5
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lgps;->a(Ljava/lang/String;Ljava/util/Map;ZILcma;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lgps$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "infoHolder"    # Lgps$a;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 394
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "ConversationSpaceUtils "

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", isEncrypt: "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    if-nez p1, :cond_0

    const-string/jumbo v1, "null"

    .line 396
    :goto_0
    aput-object v1, v2, v3

    const/4 v1, 0x4

    const-string/jumbo v3, ", messageContentType: "

    aput-object v3, v2, v1

    const/4 v3, 0x5

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    .line 397
    :goto_1
    aput-object v1, v2, v3

    const/4 v1, 0x6

    const-string/jumbo v3, ", conversationType: "

    aput-object v3, v2, v1

    const/4 v3, 0x7

    if-nez p1, :cond_2

    const-string/jumbo v1, "null"

    .line 398
    :goto_2
    aput-object v1, v2, v3

    const/16 v1, 0x8

    const-string/jumbo v3, ", spaceIdKey: "

    aput-object v3, v2, v1

    const/16 v3, 0x9

    if-nez p1, :cond_3

    const-string/jumbo v1, "null"

    .line 399
    :goto_3
    aput-object v1, v2, v3

    .line 394
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "ConversationSpaceUtils"

    const/4 v3, 0x0

    .line 401
    invoke-static {v0, p2, p3, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 11048
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p1, Lgps$a;->a:Z

    .line 396
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11052
    :cond_1
    iget v1, p1, Lgps$a;->b:I

    .line 397
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 11056
    :cond_2
    iget v1, p1, Lgps$a;->c:I

    .line 398
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 11064
    :cond_3
    iget-object v1, p1, Lgps$a;->d:Ljava/lang/String;

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "ConversationSpaceUtils"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ConversationSpaceUtils: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;ZILcma;)V
    .locals 5
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p2, "isEncrypt"    # Z
    .param p3, "messageContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {p2, p3}, Lgps;->a(ZI)Lgps$a;

    move-result-object v0

    .line 228
    .local v0, "infoHolder":Lgps$a;
    invoke-static {v0, p1}, Lgps;->a(Lgps$a;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "spaceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    invoke-static {v1, p4}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0

    .line 3306
    :cond_2
    if-eqz p4, :cond_0

    .line 3309
    if-nez v0, :cond_3

    .line 3310
    const-string/jumbo v2, "generateConversationSpaceId"

    const-string/jumbo v3, "null spaceInfoHolder"

    invoke-static {v2, v3}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    invoke-static {v2, v3, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 3314
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3315
    const-string/jumbo v2, "generateConversationSpaceId"

    const-string/jumbo v3, "null conversationId"

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lgps;->a(Ljava/lang/String;Lgps$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    invoke-static {v2, v3, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 3319
    :cond_4
    new-instance v2, Lgps$1;

    invoke-direct {v2, p4, v0}, Lgps$1;-><init>(Lcma;Lgps$a;)V

    .line 3339
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    .line 4056
    iget v4, v0, Lgps$a;->c:I

    .line 3339
    invoke-virtual {v3, p0, v4, v2}, Lgon;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2205
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_cspace_unify_conversation_space_id_logic"

    .line 3083
    invoke-virtual {v0, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 2207
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "cspace_unify_conversation_space_id_logic"

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v4

    .line 2209
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    move v0, v1

    .line 2210
    :goto_0
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "ConversationSpaceUtils"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ConversationSpaceUtils"

    aput-object v8, v7, v2

    const-string/jumbo v8, ", isEnableUnifyLogic = "

    aput-object v8, v7, v1

    const/4 v8, 0x2

    .line 2212
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, ", isFeatureOpen = "

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 2213
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x5

    const-string/jumbo v8, ", isConfigSwitchOn = "

    aput-object v8, v7, v3

    const/4 v3, 0x6

    .line 2214
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 2210
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 2209
    goto :goto_0

    :cond_1
    move v1, v2

    .line 201
    goto :goto_1
.end method
