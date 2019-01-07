.class public interface abstract Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
.super Ljava/lang/Object;
.source "RpcFavoriteService.java"


# virtual methods
.method public abstract syncFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
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
.end method

.method public abstract updateFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
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
.end method
