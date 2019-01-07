.class public Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "ContactServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcContactService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;
    }
.end annotation


# static fields
.field private static final JSON_FORMAT_EMAIL:Ljava/lang/String; = "{\"email\":\"%s\"}"

.field private static final KEY_companyContact:Ljava/lang/String; = "companyContact"


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getCompanyInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;>;"
    const/4 v5, 0x1

    .line 149
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_CONTACT_DETAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 151
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v2, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;->parser:Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 152
    const-string/jumbo v2, "{\"email\":\"%s\"}"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public getDepartmentChildren(Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "departmentId"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;-><init>(Ljava/lang/String;II)V

    .line 120
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_DEPARTMENT:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 122
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public searchContacts(Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 159
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;-><init>(I)V

    .line 160
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;
    invoke-virtual {v2, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setLength(I)V

    .line 161
    invoke-virtual {v2, p3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setOffset(I)V

    .line 162
    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setKeyword(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SEARCH:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 167
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    invoke-virtual {v1, v3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public syncBlackContact(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 80
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 81
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 82
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 83
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncBlackContactResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncBlackContactResponseParser;-><init>()V

    invoke-interface {v2, v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncContacts(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 67
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 68
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 69
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncContactsResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncContactsResponseParser;-><init>()V

    invoke-interface {v2, v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncRecentedContact(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 93
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 94
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 95
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 97
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncRecentedContactResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncRecentedContactResponseParser;-><init>()V

    invoke-interface {v2, v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncUpdateContacts(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 59
    .local v0, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setContacts(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public syncUserSelfContact(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 105
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 106
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 107
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;-><init>()V

    invoke-interface {v2, v1, v3, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public updateSelfInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "defName"    # Ljava/lang/String;
    .param p2, "defSendMail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "updateSelfInfo mailDisplayName\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v1, "pInfo":Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 180
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_USER_PERSONALINFO:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 182
    .local v2, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v2, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method
