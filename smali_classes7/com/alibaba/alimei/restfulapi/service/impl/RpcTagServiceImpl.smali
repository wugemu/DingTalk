.class public Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcTagServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcTagService;


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
.method public addTag(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "addTag \u65f6\u4f20\u5165\u7684tagName\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 38
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;-><init>()V

    .line 39
    .local v3, "tagData":Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;
    invoke-virtual {v3, p1}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, p2}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setColor(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setBeebox(Z)V

    .line 43
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "addTag \u65f6tag\u8f6c\u6362\u4e3ajson\u6570\u636e\u540e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 49
    .local v2, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_ADD_TAG:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 51
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 53
    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public removeTag(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 88
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "update tag error for tagId is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;-><init>()V

    .line 93
    .local v3, "tagData":Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;
    invoke-virtual {v3, p1}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setId(Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setBeebox(Z)V

    .line 96
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 98
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "updateTag error for jsonData length is less equal 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 102
    .local v2, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_REMOVE_TAG:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 104
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 106
    invoke-virtual {v1, v2, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "update tag error for tagName is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "update tag error for tagId is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_1
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;-><init>()V

    .line 67
    .local v3, "tagData":Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;
    invoke-virtual {v3, p1}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, p2}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, p3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setColor(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->setBeebox(Z)V

    .line 72
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/data/TagRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "updateTag error for jsonData length is less equal 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 78
    .local v2, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_UPDATE_TAG:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 80
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 82
    invoke-virtual {v1, v2, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method
