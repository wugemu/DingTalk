.class public Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcFavoriteServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public syncFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFavoriteResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncFavoriteResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public updateFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/FavoriteUpdateResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/FavoriteUpdateResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method
