.class final Liaw$1;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/CreateConversationParams;

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILcom/alibaba/wukong/im/CreateConversationParams;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 143
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    iput-object p1, p0, Liaw$1;->c:Liaw;

    iput p5, p0, Liaw$1;->a:I

    iput-object p6, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1, v0}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)I

    .line 184
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 143
    .line 1146
    const/4 v1, 0x0

    .line 1148
    :try_start_0
    const-string/jumbo v2, "[TAG] ConvServ"

    .line 2014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1150
    :try_start_1
    iget v1, p0, Liaw$1;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v9, v0

    .line 1151
    :cond_0
    iget v1, p0, Liaw$1;->a:I

    if-eq v1, v0, :cond_1

    if-eqz v9, :cond_5

    :cond_1
    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->isForceRpcIfLocalNotExist()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1152
    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getOpenIds()Ljava/util/List;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1154
    iget-object v1, p0, Liaw$1;->c:Liaw;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1155
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getTag()J

    move-result-wide v6

    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getExtension()Ljava/util/Map;

    move-result-object v8

    .line 1154
    invoke-static/range {v1 .. v9}, Liaw;->a(Liaw;JJJLjava/util/Map;Z)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1156
    if-nez v0, :cond_3

    .line 1157
    const-string/jumbo v0, "[API] Create chat conv null"

    invoke-virtual {v10, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR openid is err"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3030
    :cond_2
    :goto_0
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 1176
    return-void

    .line 1161
    :cond_3
    :try_start_2
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1175
    :catchall_0
    move-exception v0

    move-object v1, v10

    .line 4030
    :goto_1
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1175
    throw v0

    .line 1164
    :cond_4
    :try_start_3
    const-string/jumbo v0, "[API] Param uid null"

    invoke-virtual {v10, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERRopenid is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_5
    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-static {v0, v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 1170
    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-static {v0}, Liaw;->a(Lcom/alibaba/wukong/im/CreateConversationParams;)Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;

    move-result-object v1

    .line 1171
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v2

    iget-object v0, p0, Liaw$1;->b:Lcom/alibaba/wukong/im/CreateConversationParams;

    .line 1172
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v3

    .line 2394
    if-nez v1, :cond_6

    .line 2395
    if-eqz p2, :cond_2

    .line 2396
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 model is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    :cond_6
    iget-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->openIds:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->openIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 2402
    :cond_7
    if-eqz p2, :cond_2

    .line 2403
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 openid is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    :cond_8
    new-instance v4, Liav$53;

    invoke-direct {v4, v2, p2, v1}, Liav$53;-><init>(Liav;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;)V

    .line 2449
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] createConv"

    invoke-virtual {v4}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->create(Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1175
    :catchall_1
    move-exception v0

    goto/16 :goto_1
.end method
