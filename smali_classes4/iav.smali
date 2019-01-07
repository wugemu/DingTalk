.class public final Liav;
.super Ljava/lang/Object;
.source "ConversationRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p0, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<*>;"
    if-eqz p0, :cond_0

    .line 1374
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 conversation id is empty"

    invoke-interface {p0, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    if-gtz p1, :cond_1

    .line 114
    if-eqz p2, :cond_0

    .line 115
    const-string/jumbo v1, "101002"

    const-string/jumbo v4, "PARAMETER_ERR count must > 0"

    invoke-interface {p2, v1, v4}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Liav;->a(ILcom/alibaba/wukong/Callback;Z)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Liav$11;

    invoke-direct {v0, p0, p2}, Liav$11;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 157
    .local v0, "handler":Lhzy;, "Lhzy<Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] listNewestExt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncService;->getSyncMinCreateTime()J

    move-result-wide v2

    .line 159
    .local v2, "minCreateTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 160
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v4, "[RPC] listNewestExt V1"

    .line 2018
    const-string/jumbo v5, "im"

    invoke-static {v1, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listNewestExt(Ljava/lang/Integer;Liyv;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string/jumbo v1, "[TAG] ConvRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] listNewestExt V2 minCreateTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3018
    const-string/jumbo v5, "im"

    invoke-static {v1, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listNewestExtV2(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(ILcom/alibaba/wukong/Callback;Z)V
    .locals 6
    .param p1, "count"    # I
    .param p3, "forceAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    if-gtz p1, :cond_1

    .line 179
    if-eqz p2, :cond_0

    .line 180
    const-string/jumbo v1, "101002"

    const-string/jumbo v4, "PARAMETER_ERR count must > 0"

    invoke-interface {p2, v1, v4}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-wide/16 v2, 0x0

    .line 185
    .local v2, "minCreateTime":J
    if-nez p3, :cond_2

    .line 186
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncService;->getSyncMinCreateTime()J

    move-result-wide v2

    .line 187
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 188
    const-wide/16 v2, 0x0

    .line 191
    :cond_2
    new-instance v0, Liav$22;

    invoke-direct {v0, p0, p2}, Liav$22;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 286
    .local v0, "handler":Lhzy;, "Lhzy<Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] listNewestExtV3: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "[TAG] ConvRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] listNewestExtV3, forceAll="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", minCreateTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4018
    const-string/jumbo v5, "im"

    invoke-static {v1, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listNewestExtV3(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;ILcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "cursor"    # Ljava/lang/Long;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 332
    .local p3, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    if-gtz p2, :cond_1

    .line 333
    if-eqz p3, :cond_0

    .line 334
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002 count must > 0"

    invoke-interface {p3, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    new-instance v0, Liav$43;

    invoke-direct {v0, p0, p3}, Liav$43;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 353
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] listGroup"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listGroup(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 462
    .local p4, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    if-eqz p4, :cond_0

    .line 464
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR conversation id is empty"

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    if-gtz p3, :cond_2

    .line 471
    if-eqz p4, :cond_0

    .line 472
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR count must > 0"

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_2
    new-instance v0, Liav$54;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Liav$54;-><init>(Liav;Lcom/alibaba/wukong/Callback;Ljava/lang/String;IILcom/alibaba/wukong/Callback;)V

    .line 520
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] listMember"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listMembers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 364
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    if-eqz p2, :cond_0

    .line 366
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002 conversation id is empty"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v0, Liav$52;

    invoke-direct {v0, p0, p2}, Liav$52;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 382
    .local v0, "handler":Lhzy;, "Lhzy<Lcom/alibaba/wukong/idl/im/models/ConversationModel;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] getConv"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getByIdUnlimited(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "isCleanUp"    # Ljava/lang/Boolean;
    .param p3, "sendMessageModel"    # Lcom/alibaba/wukong/idl/im/models/SendMessageModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/wukong/idl/im/models/SendMessageModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 801
    .local p4, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    if-eqz p4, :cond_0

    .line 803
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002 conversation id is empty"

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    if-eqz p3, :cond_2

    .line 808
    iput-object p1, p3, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 809
    :cond_2
    new-instance v0, Liav$9;

    invoke-direct {v0, p0, p4}, Liav$9;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 817
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] quitConv"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->quit(Ljava/lang/String;Ljava/lang/Boolean;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 721
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-static {p3}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 737
    :goto_0
    return-void

    .line 726
    :cond_0
    new-instance v0, Liav$6;

    invoke-direct {v0, p0, p3}, Liav$6;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 734
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] updateConvExt"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateExtension(Ljava/lang/String;Ljava/util/Map;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 850
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    :cond_0
    if-eqz p2, :cond_1

    .line 852
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_1
    :goto_0
    return-void

    .line 856
    :cond_2
    new-instance v0, Liav$12;

    invoke-direct {v0, p0, p2}, Liav$12;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 863
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] hides"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->hides(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1173
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1187
    :goto_0
    return-void

    .line 1178
    :cond_0
    new-instance v0, Liav$28;

    invoke-direct {v0, p0, p2}, Liav$28;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 1186
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->disband(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 873
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 874
    :cond_0
    if-eqz p2, :cond_1

    .line 875
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002 hide conversations must not empty"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    new-instance v0, Liav$13;

    invoke-direct {v0, p0, p2}, Liav$13;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 886
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] hideCids"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->hides(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 944
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    :cond_0
    if-eqz p2, :cond_1

    .line 946
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_1
    :goto_0
    return-void

    .line 950
    :cond_2
    new-instance v0, Liav$16;

    invoke-direct {v0, p0, p2}, Liav$16;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 964
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-string/jumbo v1, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] getConvs"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getByIds(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
