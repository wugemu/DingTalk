.class public Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcDentryServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getSpaceUpdateInfo(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceUpdateResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncSpaceUpdateResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public previewDoc(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/PreviewDocParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/PreviewDocParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public previewDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "bizType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;>;"
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getPreviewService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;

    move-result-object v0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;->getPreviewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public previewDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "attachId"    # Ljava/lang/String;
    .param p2, "bizId"    # Ljava/lang/String;
    .param p3, "bizType"    # Ljava/lang/String;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "attachmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getPreviewService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;->getPreviewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public syncDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncDentryResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncDentryResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public transferDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/TransferDentryResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/TransferDentryResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public updateBooleanDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/DentryBooleanResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentryBooleanResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public updateDentryCreateItem(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;>;"
    const/4 v3, 0x1

    .line 80
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 81
    .local v2, "updateRequestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iput-object v1, v2, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;-><init>()V

    invoke-interface {v3, v0, v4, p3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public updateDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "requestData"    # Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/parser/DentryUpdateResponseParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentryUpdateResponseParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncUpdateItems(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method
