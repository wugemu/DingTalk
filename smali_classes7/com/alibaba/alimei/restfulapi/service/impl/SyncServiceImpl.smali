.class public Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "SyncServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public folderCanModify(Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<*>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<*>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "FolderCanModifyRequestData\u4e2d\u6ca1\u8bbe\u5b9a\u4efb\u4f55\u8981\u8fdb\u884c\u540c\u6b65\u7684\u5185\u5bb9"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/FolderCanModifyRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "folderCanModify\u65f6FolderCanModifyRequestData\u8f6c\u6362\u4e3ajson\u6570\u636e\u540e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 129
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_FOLDER_CAN_MODIFY:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 131
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public syncFolders(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "syncKey"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->isAsynchronousService()Z

    move-result v2

    sget-object v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYNC_FOLDERS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 39
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildSyncFolderRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public varargs syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;[Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "folder"    # Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    .param p4, "folders"    # [Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<*>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<*>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>(Ljava/util/List;)V

    .line 69
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 70
    if-eqz p4, :cond_0

    array-length v2, p4

    if-lez v2, :cond_0

    .line 71
    array-length v3, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p4, v2

    .line 72
    .local v1, "pd":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "pd":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "folders"    # Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<*>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<*>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->isEmptyRequestData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "SyncItemsRequestData folders\u4e2d\u672a\u8bbe\u5b9a\u4efb\u4f55\u8981\u8fdb\u884c\u540c\u6b65\u7684\u5185\u5bb9"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "syncItems \u65f6SyncItemsRequestData\u8f6c\u6362\u4e3ajson\u6570\u636e\u540e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 92
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYNC_ITEMS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 94
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 95
    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public syncTags(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "syncKey"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;>;"
    const/16 v6, 0x14

    .line 44
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v5}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>(Ljava/util/List;)V

    .line 45
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    iput v6, v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderType:I

    .line 47
    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 49
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->isEmptyRequestData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "SyncItemsRequestData folders\u4e2d\u672a\u8bbe\u5b9a\u4efb\u4f55\u8981\u8fdb\u884c\u540c\u6b65\u7684\u5185\u5bb9"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "jsonData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 55
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "syncItems \u65f6SyncItemsRequestData\u8f6c\u6362\u4e3ajson\u6570\u636e\u540e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v4

    .line 59
    .local v4, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->isAsynchronousService()Z

    move-result v6

    sget-object v7, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYNC_ITEMS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v8, 0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 61
    .local v3, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v5, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 62
    invoke-virtual {v3, v4, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v5

    return-object v5
.end method

.method public syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    .local p2, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<*>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<*>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->isEmptyRequestData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "ItemsUpdateRequestData\u4e2d\u672a\u8bbe\u5b9a\u4efb\u4f55\u8981\u8fdb\u884c\u540c\u6b65\u7684\u5185\u5bb9"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 107
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "syncUpdateItems \u65f6ItemsUpdateRequestData\u8f6c\u6362\u4e3ajson\u6570\u636e\u540e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 111
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_UPDATE_ITEMS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 113
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 114
    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method
