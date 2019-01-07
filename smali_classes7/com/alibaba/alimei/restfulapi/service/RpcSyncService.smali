.class public interface abstract Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;
.super Ljava/lang/Object;
.source "RpcSyncService.java"


# virtual methods
.method public abstract folderCanModify(Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<*>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<*>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract syncFolders(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public varargs abstract syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;[Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<*>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<*>;[",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            ")",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<*>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<*>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract syncTags(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method

.method public abstract syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;",
            "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
            "<*>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<*>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation
.end method
