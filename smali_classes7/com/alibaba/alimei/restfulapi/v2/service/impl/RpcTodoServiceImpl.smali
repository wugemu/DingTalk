.class public Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcTodoServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/v2/service/RpcTodoService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public syncTodo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "dataScope"    # I
    .param p3, "syncKey"    # Ljava/lang/String;
    .param p4, "windowOffset"    # Ljava/lang/Integer;
    .param p5, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 52
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 53
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 54
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 55
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 56
    iput-object p4, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowOffset:Ljava/lang/Integer;

    .line 57
    iput p5, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncTodoResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncTodoResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p6}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncTodoCategory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "dataScope"    # I
    .param p3, "syncKey"    # Ljava/lang/String;
    .param p4, "windowOffset"    # Ljava/lang/Integer;
    .param p5, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoCategoryResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoCategoryResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 34
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    iput p2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 35
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 36
    iput-object p1, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 37
    iput-object p3, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 38
    iput-object p4, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowOffset:Ljava/lang/Integer;

    .line 39
    iput p5, v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncTodoCategoryResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncTodoCategoryResponseParser;-><init>()V

    invoke-interface {v2, v0, v3, p6}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public updateTodo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Todo;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "todo"    # Lcom/alibaba/alimei/restfulapi/v2/data/Todo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Todo;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;>;"
    const/4 v3, 0x1

    .line 67
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 68
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/data/Todo;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;

    invoke-direct {v4, p2}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V

    invoke-interface {v3, v0, v4, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public updateTodoCategory(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "todoCategory"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;>;"
    const/4 v3, 0x1

    .line 82
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 83
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;

    invoke-direct {v4, p2}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;)V

    invoke-interface {v3, v0, v4, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method
